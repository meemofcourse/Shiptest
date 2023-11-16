// hats

/obj/item/clothing/head/beret/sec/frontier
	name = "\improper Frontiersmen beret"
	desc = "A scratchy olive green beret, worn by Frontiersmen who want to look good while intimidating freighter crew."
	icon_state = "frontier_beret"

/obj/item/clothing/head/beret/sec/frontier/officer
	name = "\improper Frontiersmen officer beret"
	desc = "A scratchy olive green beret emblazoned with the Frontiersmen insignia, worn by Frontiersmen who want to look good while intimidating freighter captains."
	icon_state = "frontier_officer_beret"

/obj/item/clothing/head/helmet/bulletproof/x11/frontier
	name = "\improper Frontiersmen X11 Helmet"
	desc = "A heavily modified X11 used by the Frontiersmen pirate fleet."
	icon_state = "x11helm_frontier"
	unique_reskin = null

/obj/item/clothing/head/helmet/r_trapper
	name = "reinforced trapper hat"
	desc = "An occasional sight on the heads of Frontiersmen stationed on cold worlds. 200% bear."
	icon_state = "rus_ushanka"
	item_state = "rus_ushanka"
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	armor = list("melee" = 25, "bullet" = 20, "laser" = 20, "energy" = 30, "bomb" = 20, "bio" = 50, "rad" = 20, "fire" = -10, "acid" = 50)

// suit
/obj/item/clothing/suit/space/hardsuit/security/independent/frontier
	name = "\improper Frontiersmen hardsuit"
	desc = "An old hardsuit based on a even older hardsuit. Used prolifically by the Frontiersmen pirate fleet."
	icon_state = "hardsuit_frontier"
	hardsuit_type = "hardsuit_frontier"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security/independent/frontier

/obj/item/clothing/head/helmet/space/hardsuit/security/independent/frontier
	name = "\improper Frontiersmen hardsuit helmet"
	desc = "An old hardsuit helmet based on a even older hardsuit helmet. Used prolifically by the Frontiersmen pirate fleet."
	icon_state = "hardsuit0-frontier"
	hardsuit_type = "frontier"


// headset

/obj/item/radio/headset/pirate
	name = "pirate radio headset"
	desc = "Used to sing shanties across the vast emptiness of space, and complain about Minuteman patrols."
	icon_state = "pirate_headset"
	keyslot = new /obj/item/encryptionkey/pirate

/obj/item/radio/headset/pirate/captain
	name = "pirate captain radio headset"
	desc = "The headset of a bloodthirsty pirate captain."
	keyslot2 = new /obj/item/encryptionkey/heads/captain
	command = TRUE

/obj/item/radio/headset/pirate/alt
	name = "pirate bowman headset"
	desc = "Used to sing shanties across the vast emptiness of space, and complain about Minuteman patrols. Protects ears from flashbangs."
	icon_state = "pirate_headset_alt"
	item_state = "pirate_headset_alt"

/obj/item/radio/headset/pirate/alt/captain
	name = "pirate captain bowman headset"
	desc = "The headset of a bloodthirsty pirate captain. Protects ears from flashbangs."
	keyslot2 = new /obj/item/encryptionkey/heads/captain
	command = TRUE

/obj/item/radio/headset/pirate/alt/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))
