/obj/item/clothing/accessory/holster
	name = "shoulder holster"
	desc = "A holster to carry a handgun and ammo. WARNING: Badasses only."
	icon_state = "holster"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/holster
	attachment_slot = null

/obj/item/clothing/accessory/holster/detective
	name = "detective's shoulder holster"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/holster/detective



/obj/item/clothing/accessory/holster/detective/Initialize()
	. = ..()
	new /obj/item/gun/ballistic/revolver/detective(src)
	new /obj/item/ammo_box/c38(src)
	new /obj/item/ammo_box/c38(src)

/obj/item/clothing/accessory/holster/nukie
	name = "operative holster"
	desc = "A deep shoulder holster capable of holding almost any form of ballistic weaponry."
	w_class = WEIGHT_CLASS_BULKY
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/holster/nukie

/obj/item/clothing/accessory/holster/chameleon
	name = "syndicate holster"
	desc = "A two pouched hip holster that uses chameleon technology to disguise itself and any guns in it."
	var/datum/action/item_action/chameleon/change/chameleon_action

/obj/item/clothing/accessory/holster/chameleon/Initialize()
	. = ..()

	chameleon_action = new(src)
	chameleon_action.chameleon_type = /obj/item/clothing/accessory
	chameleon_action.chameleon_name = "Accessory"
	chameleon_action.initialize_disguises()

/obj/item/clothing/accessory/holster/chameleon/Destroy()
	QDEL_NULL(chameleon_action)
	return ..()

/obj/item/clothing/accessory/holster/chameleon/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	chameleon_action.emp_randomise()

/obj/item/clothing/accessory/holster/chameleon/broken/Initialize()
	. = ..()
	chameleon_action.emp_randomise(INFINITY)

/obj/item/clothing/accessory/holster/marine
	name = "marine's holster"
	desc = "Wearing this makes you feel badass, but you suspect it's just a detective's holster from a surplus somewhere."

/obj/item/clothing/accessory/holster/marine/Initialize()
	. = ..()
	new /obj/item/gun/ballistic/automatic/pistol/candor(src)
	new /obj/item/ammo_box/magazine/m45(src)
	new /obj/item/ammo_box/magazine/m45(src)
