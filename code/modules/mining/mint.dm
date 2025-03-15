/**********************Mint**************************/


/obj/machinery/mineral/mint
	name = "coin press"
	icon = 'icons/obj/economy.dmi'
	icon_state = "coinpress0"
	density = TRUE
	input_dir = EAST
	needs_item_input = TRUE

	var/produced_coins = 0 // how many coins the machine has made in it's last cycle
	var/processing = FALSE
	var/chosen = /datum/material/iron //which material will be used to make coins


/obj/machinery/mineral/mint/Initialize()
	. = ..()
	AddComponent(/datum/component/material_container, list(
		/datum/material/iron,
		/datum/material/plasma,
		/datum/material/silver,
		/datum/material/gold,
		/datum/material/uranium,
		/datum/material/titanium,
		/datum/material/diamond,
		/datum/material/plastic,
		/datum/material/hellstone,
	), MINERAL_MATERIAL_AMOUNT * 75, FALSE, /obj/item/stack)
	chosen = SSmaterials.GetMaterialRef(chosen)


/obj/machinery/mineral/mint/pickup_item(datum/source, atom/movable/target, atom/oldLoc)
	if(!istype(target, /obj/item/stack))
		return

	var/datum/component/material_container/materials = GetComponent(/datum/component/material_container)
	var/obj/item/stack/S = target

	if(materials.insert_item(S))
		qdel(S)

/obj/machinery/mineral/mint/process(seconds_per_tick)
	if(processing)
		var/datum/component/material_container/materials = GetComponent(/datum/component/material_container)
		var/datum/material/M = chosen

		if(!M)
			processing = FALSE
			icon_state = "coinpress0"
			return

		icon_state = "coinpress1"
		var/coin_mat = MINERAL_MATERIAL_AMOUNT

		for(var/sheets in 1 to 2)
			if(materials.use_amount_mat(coin_mat, chosen))
				for(var/coin_to_make in 1 to 5)
					create_coins()
					produced_coins++
			else
				var/found_new = FALSE
				for(var/datum/material/inserted_material in materials.materials)
					var/amount = materials.get_material_amount(inserted_material)

					if(amount)
						chosen = inserted_material
						found_new = TRUE

				if(!found_new)
					processing = FALSE
	else
		end_processing()
		icon_state = "coinpress0"

/obj/machinery/mineral/mint/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "Mint", name)
		ui.open()

/obj/machinery/mineral/mint/ui_data()
	var/list/data = list()
	data["inserted_materials"] = list()
	data["chosen_material"] = null

	var/datum/component/material_container/materials = GetComponent(/datum/component/material_container)
	for(var/datum/material/inserted_material in materials.materials)
		var/amount = materials.get_material_amount(inserted_material)
		if(!amount)
			continue
		data["inserted_materials"] += list(list(
			"material" = inserted_material.name,
			"amount" = amount,
		))
		if(chosen == inserted_material)
			data["chosen_material"] = inserted_material.name

	data["produced_coins"] = produced_coins
	data["processing"] = processing

	return data;

/obj/machinery/mineral/mint/ui_act(action, params, datum/tgui/ui)
	. = ..()
	if(.)
		return
	if(action == "startpress")
		if (!processing)
			if(produced_coins > 0)
				log_econ("[produced_coins] coins were created by [src] in the last cycle.")
			produced_coins = 0
		processing = TRUE
		begin_processing()
		return TRUE
	if (action == "stoppress")
		processing = FALSE
		end_processing()
		return TRUE
	if (action == "changematerial")
		var/datum/component/material_container/materials = GetComponent(/datum/component/material_container)
		for(var/datum/material/mat in materials.materials)
			if (params["material_name"] == mat.name)
				chosen = mat
		return TRUE

/obj/machinery/mineral/mint/proc/create_coins()
	var/turf/T = get_step(src,output_dir)
	var/temp_list = list()
	temp_list[chosen] = 400
	if(T)
		var/obj/item/O = new /obj/item/coin(src)
		var/obj/item/storage/bag/money/B = locate(/obj/item/storage/bag/money, T)
		O.set_custom_materials(temp_list)
		if(!B)
			B = new /obj/item/storage/bag/money(src)
			unload_mineral(B)
		O.forceMove(B)
		SSblackbox.record_feedback("amount", "coins_minted", 1)
