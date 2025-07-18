/obj/item/clothing/accessory //Ties moved to neck slot items, but as there are still things like medals and armbands, this accessory system is being kept as-is
	name = "Accessory"
	desc = "Something has gone wrong!"
	icon = 'icons/obj/clothing/accessories.dmi'
	mob_overlay_icon = 'icons/mob/clothing/accessories.dmi'
	icon_state = "plasma"
	item_state = ""	//no inhands
	slot_flags = 0
	w_class = WEIGHT_CLASS_SMALL
	var/above_suit = FALSE
	var/minimize_when_attached = TRUE // TRUE if shown as a small icon in corner, FALSE if overlayed
	var/datum/component/storage/detached_pockets
	var/attachment_slot = CHEST

/obj/item/clothing/accessory/Destroy()
	set_detached_pockets(null)
	return ..()

/obj/item/clothing/accessory/proc/can_attach_accessory(obj/item/clothing/U, mob/user)
	if(!attachment_slot || (U && U.body_parts_covered & attachment_slot))
		return TRUE
	if(user)
		to_chat(user, span_warning("There doesn't seem to be anywhere to put [src]..."))

/obj/item/clothing/accessory/proc/attach(obj/item/clothing/under/U, user)
	var/datum/component/storage/storage = GetComponent(/datum/component/storage)
	if(storage)
		if(SEND_SIGNAL(U, COMSIG_CONTAINS_STORAGE))
			return FALSE
		U.TakeComponent(storage)
		set_detached_pockets(storage)
	U.attached_accessory = src
	forceMove(U)
	layer = FLOAT_LAYER
	plane = FLOAT_PLANE
	if(minimize_when_attached)
		transform *= 0.5	//halve the size so it doesn't overpower the under
		pixel_x += 8
		pixel_y -= 8
	U.add_overlay(src)

	if (islist(U.armor) || isnull(U.armor)) 										// This proc can run before /obj/Initialize has run for U and src,
		U.armor = getArmor(arglist(U.armor))	// we have to check that the armor list has been transformed into a datum before we try to call a proc on it
																					// This is safe to do as /obj/Initialize only handles setting up the datum if actually needed.
	if (islist(armor) || isnull(armor))
		armor = getArmor(arglist(armor))

	U.armor = U.armor.attachArmor(armor)

	if(isliving(user))
		on_uniform_equip(U, user)

	return TRUE

/obj/item/clothing/accessory/proc/detach(obj/item/clothing/under/U, user)
	if(detached_pockets && detached_pockets.parent == U)
		TakeComponent(detached_pockets)

	U.armor = U.armor.detachArmor(armor)

	if(isliving(user))
		on_uniform_dropped(U, user)

	if(minimize_when_attached)
		transform *= 2
		pixel_x -= 8
		pixel_y += 8
	layer = initial(layer)
	plane = initial(plane)
	U.cut_overlays()
	U.attached_accessory = null
	U.accessory_overlay = null

/obj/item/clothing/accessory/proc/set_detached_pockets(new_pocket)
	if(detached_pockets)
		UnregisterSignal(detached_pockets, COMSIG_PARENT_QDELETING)
	detached_pockets = new_pocket
	if(detached_pockets)
		RegisterSignal(detached_pockets, COMSIG_PARENT_QDELETING, PROC_REF(handle_pockets_del))

/obj/item/clothing/accessory/proc/handle_pockets_del(datum/source)
	SIGNAL_HANDLER
	set_detached_pockets(null)

/obj/item/clothing/accessory/proc/on_uniform_equip(obj/item/clothing/under/U, user)
	return

/obj/item/clothing/accessory/proc/on_uniform_dropped(obj/item/clothing/under/U, user)
	return

/obj/item/clothing/accessory/AltClick(mob/user)
	if(istype(user) && user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		if(initial(above_suit))
			above_suit = !above_suit
			to_chat(user, "[src] will be worn [above_suit ? "above" : "below"] your suit.")
		return ..()

/obj/item/clothing/accessory/examine(mob/user)
	. = ..()
	. += span_notice("\The [src] can be attached to a uniform. Ctrl-click to remove it once attached.")
	if(initial(above_suit))
		. += span_notice("\The [src] can be worn above or below your suit. Alt-click to toggle.")

/obj/item/clothing/accessory/waistcoat
	name = "waistcoat"
	desc = "For some classy, murderous fun."
	icon_state = "waistcoat"
	item_state = "det_suit"
	minimize_when_attached = FALSE
	attachment_slot = null

/obj/item/clothing/accessory/maidapron
	name = "maid apron"
	desc = "The best part of a maid costume."
	icon_state = "maidapron"
	item_state = "maidapron"
	minimize_when_attached = FALSE
	attachment_slot = null

////////////
//Armbands//
////////////

/obj/item/clothing/accessory/armband
	name = "red armband"
	desc = "A fancy red armband!"
	icon_state = "redband"
	attachment_slot = null

/obj/item/clothing/accessory/armband/deputy
	name = "security deputy armband"
	desc = "An armband, worn by personnel authorized to act as a deputy of corporate security."

/obj/item/clothing/accessory/armband/cargo
	name = "brown armband"
	desc = "A fancy brown armband!"
	icon_state = "cargoband"

/obj/item/clothing/accessory/armband/engine
	name = "orange armband"
	desc = "A fancy orange and yellow armband!"
	icon_state = "engieband"

/obj/item/clothing/accessory/armband/science
	name = "purple armband"
	desc = "A fancy purple armband!"
	icon_state = "rndband"

/obj/item/clothing/accessory/armband/hydro
	name = "green and blue armband"
	desc = "A fancy green and blue armband!"
	icon_state = "hydroband"

/obj/item/clothing/accessory/armband/med
	name = "white armband"
	desc = "A fancy white armband!"
	icon_state = "medband"

/obj/item/clothing/accessory/armband/medblue
	name = "white and blue armband"
	desc = "A fancy white and blue armband!"
	icon_state = "medblueband"

//////////////
//OBJECTION!//
//////////////

/obj/item/clothing/accessory/lawyers_badge
	name = "attorney's badge"
	desc = "Fills you with the conviction of JUSTICE. Lawyers tend to want to show it to everyone they meet."
	icon_state = "lawyerbadge"

/obj/item/clothing/accessory/lawyers_badge/attack_self(mob/user)
	if(prob(1))
		user.say("The testimony contradicts the evidence!", forced = "attorney's badge")
	user.visible_message(span_notice("[user] shows [user.p_their()] attorney's badge."), span_notice("You show your attorney's badge."))

/obj/item/clothing/accessory/lawyers_badge/on_uniform_equip(obj/item/clothing/under/U, user)
	var/mob/living/L = user
	if(L)
		L.bubble_icon = "lawyer"

/obj/item/clothing/accessory/lawyers_badge/on_uniform_dropped(obj/item/clothing/under/U, user)
	var/mob/living/L = user
	if(L)
		L.bubble_icon = initial(L.bubble_icon)

////////////////
//HA HA! NERD!//
////////////////
/obj/item/clothing/accessory/pocketprotector
	name = "pocket protector"
	desc = "Can protect your clothing from ink stains, but you'll look like a nerd if you're using one."
	icon_state = "pocketprotector"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/pocketprotector

/obj/item/clothing/accessory/pocketprotector/full/Initialize()
	. = ..()
	new /obj/item/pen/red(src)
	new /obj/item/pen(src)
	new /obj/item/pen/blue(src)

/obj/item/clothing/accessory/pocketprotector/cosmetology/Initialize()
	. = ..()
	for(var/i in 1 to 3)
		new /obj/item/lipstick/random(src)


////////////////
//OONGA BOONGA//
////////////////

/obj/item/clothing/accessory/bonearmlet
	name = "bone armlet"
	desc = "An armlet made out of animal bone and sinew. According to a common Frontier superstition, it brings good luck to its wearer."
	icon_state = "bone_armlet"
	attachment_slot = ARMS
	above_suit = TRUE

/obj/item/clothing/accessory/skullcodpiece
	name = "skull codpiece"
	desc = "A legion skull fitted to a codpiece, intended to protect the important things in life."
	icon_state = "skull"
	above_suit = TRUE
	attachment_slot = GROIN

/obj/item/clothing/accessory/skilt
	name = "sinew skirt"
	desc = "For the last time. IT'S A KILT not a skirt."
	icon_state = "skilt"
	above_suit = TRUE
	minimize_when_attached = FALSE
	attachment_slot = GROIN

//////////
//RILENA//
//////////

/obj/item/clothing/accessory/rilena_pin
	name = "RILENA: LMR Xader pin"
	desc = "A pin that shows your love for the webseries RILENA."
	icon_state = "rilena_pin"
	above_suit = FALSE
	minimize_when_attached = TRUE
	attachment_slot = null

/obj/item/clothing/accessory/rilena_pin/on_uniform_equip(obj/item/clothing/under/U, user)
	var/mob/living/L = user
	if(HAS_TRAIT(L, TRAIT_FAN_RILENA))
		SEND_SIGNAL(L, COMSIG_ADD_MOOD_EVENT, "rilena_pin", /datum/mood_event/rilena_fan)

/obj/item/clothing/accessory/rilena_pin/on_uniform_dropped(obj/item/clothing/under/U, user)
	var/mob/living/L = user
	if(HAS_TRAIT(L, TRAIT_FAN_RILENA))
		SEND_SIGNAL(L, COMSIG_CLEAR_MOOD_EVENT, "rilena_pin")
