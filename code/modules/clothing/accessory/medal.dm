//////////
//Medals//
//////////

/obj/item/clothing/accessory/medal
	name = "bronze medal"
	desc = "A bronze medal."
	icon_state = "bronze"
	custom_materials = list(/datum/material/iron=1000)
	resistance_flags = FIRE_PROOF
	attachment_slot = null
	var/medaltype = "medal" //Sprite used for medalbox
	var/commended = FALSE

//Pinning medals on people
/obj/item/clothing/accessory/medal/attack(mob/living/carbon/human/M, mob/living/user)
	if(ishuman(M) && (user.a_intent == INTENT_HELP))

		if(M.wear_suit)
			if((M.wear_suit.flags_inv & HIDEJUMPSUIT)) //Check if the jumpsuit is covered
				to_chat(user, span_warning("Medals can only be pinned on jumpsuits."))
				return

		if(M.w_uniform)
			var/obj/item/clothing/under/U = M.w_uniform
			var/delay = 20
			if(user == M)
				delay = 0
			else
				user.visible_message(
					span_notice("[user] is trying to pin [src] on [M]'s chest."), \
					span_notice("You try to pin [src] on [M]'s chest."))
			var/input
			if(!commended && user != M)
				input = stripped_input(user,"Please input a reason for this commendation. It will be shown at the end of the round.", ,"", 140)
			if(do_after(user, delay, target = M))
				if(U.attach_accessory(src, user, 0)) //Attach it, do not notify the user of the attachment
					if(user == M)
						to_chat(user, span_notice("You attach [src] to [U]."))
					else
						user.visible_message(
							span_notice("[user] pins \the [src] on [M]'s chest."), \
							span_notice("You pin \the [src] on [M]'s chest."))
						if(input)
							SSblackbox.record_feedback("associative", "commendation", 1, list("commender" = "[user.real_name]", "commendee" = "[M.real_name]", "medal" = "[src]", "reason" = input))
							GLOB.commendations += "[user.real_name] awarded <b>[M.real_name]</b> the <span class='medaltext'>[name]</span>! \n- [input]"
							commended = TRUE
							desc += "<br>The inscription reads: [input] - [user.real_name]"
							log_game("<b>[key_name(M)]</b> was given the following commendation by <b>[key_name(user)]</b>: [input]")
							message_admins("<b>[key_name_admin(M)]</b> was given the following commendation by <b>[key_name_admin(user)]</b>: [input]")

		else
			to_chat(user, span_warning("Medals can only be pinned on jumpsuits!"))
	else
		..()

/obj/item/clothing/accessory/medal/conduct
	name = "distinguished conduct medal"
	desc = "A bronze medal awarded for distinguished conduct. While an honor to be awarded, it is one of the most common medals next to the bronze heart."

/obj/item/clothing/accessory/medal/bronze_heart
	name = "bronze heart medal"
	desc = "A bronze heart-shaped medal awarded for sacrifice. It is often awarded posthumously or for severe injury in the line of duty."
	icon_state = "bronze_heart"

/obj/item/clothing/accessory/medal/ribbon
	name = "ribbon"
	desc = "A ribbon"
	icon_state = "cargo"

/obj/item/clothing/accessory/medal/ribbon/cargo
	name = "\"cargo tech of the shift\" award"
	desc = "A common award bestowed by cargo quartermasters everywhere to their outperforming employees. Often paired with Unpaid Time Off."

/obj/item/clothing/accessory/medal/silver
	name = "silver medal"
	desc = "A silver medal."
	icon_state = "silver"
	medaltype = "medal-silver"
	custom_materials = list(/datum/material/silver=1000)

/obj/item/clothing/accessory/medal/silver/valor
	name = "medal of valor"
	desc = "A silver medal awarded for acts of exceptional valor."

/obj/item/clothing/accessory/medal/silver/security
	name = "exceptional service award"
	desc = "A silver medal awarded for exceptional service within one's roles, often ranging from combat operations to triage and first aid."

/obj/item/clothing/accessory/medal/silver/excellence
	name = "\proper the head of personnel award for outstanding achievement in the field of excellence"
	desc = "Nanotrasen's dictionary defines excellence as \"the quality or condition of being excellent\". This is awarded to those rare crewmembers who fit that definition."

/obj/item/clothing/accessory/medal/silver/bureaucracy
	name = "\improper Excellence in Bureaucracy Medal"
	desc = "An award for excellent bureaucratic work, often seen pinned to the uniforms of middle-managers."

/obj/item/clothing/accessory/medal/gold
	name = "gold medal"
	desc = "A prestigious golden medal."
	icon_state = "gold"
	medaltype = "medal-gold"
	custom_materials = list(/datum/material/gold=1000)


/obj/item/clothing/accessory/medal/gold/captain
	name = "medal of captaincy"
	desc = "A golden medal awarded exclusively to those promoted to the rank of captain. It signifies the codified responsibilities of a captain to their ship, and their undisputable authority over their crew."
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	var/obj/item/key/ship/shipkey

/obj/item/clothing/accessory/medal/gold/captain/attackby(obj/item/key/ship/shipkey, mob/user, params)
	if(!istype(shipkey))
		return ..()

	if(!QDELETED(src.shipkey))
		to_chat(user, span_notice("[src] already contains [src.shipkey]."))
		return TRUE

	src.shipkey = shipkey
	shipkey.forceMove(src)
	to_chat(user, span_notice("You slot [shipkey] into [src]."))

/obj/item/clothing/accessory/medal/gold/captain/AltClick(mob/user)
	if(!shipkey || !Adjacent(user) || !isliving(user))
		return ..()
	shipkey.forceMove(get_turf(src))
	user.put_in_hands(shipkey)
	to_chat(user, span_notice("You remove [shipkey] from [src]."))
	shipkey = null

/obj/item/clothing/accessory/medal/gold/captain/examine(mob/user)
	. = ..()
	if(shipkey)
		. += "[shipkey] could be removed by Alt Clicking."
	else
		. += "It has space for a ship key."

/obj/item/clothing/accessory/medal/gold/heroism
	name = "medal of exceptional heroism"
	desc = "An extremely rare golden medal awarded only by the highest echelons of military service. To receive such a medal is the highest honor and as such, very few exist. This medal is almost never awarded."

/obj/item/clothing/accessory/medal/plasma
	name = "plasma medal"
	desc = "An eccentric medal made of plasma."
	icon_state = "plasma"
	medaltype = "medal-plasma"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = -10, "acid" = 0) //It's made of plasma. Of course it's flammable.
	custom_materials = list(/datum/material/plasma=1000)

/obj/item/clothing/accessory/medal/plasma/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	if(exposed_temperature > 300)
		atmos_spawn_air("plasma=20;TEMP=[exposed_temperature]")
		visible_message(span_danger("\The [src] bursts into flame!"), span_userdanger("Your [src] bursts into flame!"))
		qdel(src)

/obj/item/clothing/accessory/medal/plasma/nobel_science
	name = "nobel sciences award"
	desc = "A plasma medal which represents significant contributions to the field of science or engineering."
