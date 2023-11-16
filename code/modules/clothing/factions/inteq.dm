/obj/item/clothing/under/inteq
	name = "inteq turtleneck"
	desc = "A rich brown turtleneck with black pants, it has a small 'IRMG' embroidered onto the shoulder."
	icon_state = "inteq"
	item_state = "bl_suit"
	has_sensor = HAS_SENSORS
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	supports_variations = DIGITIGRADE_VARIATION | VOX_VARIATION | KEPORI_VARIATION
	alt_covers_chest = TRUE
	icon = 'icons/obj/clothing/faction/inteq/under.dmi'
	mob_overlay_icon = 'icons/mob/clothing/faction/inteq/under.dmi'

/obj/item/clothing/under/inteq/skirt
	name = "inteq skirtleneck"
	desc = "A rich brown turtleneck with a free flowing black skirt, it has a small 'IRMG' embroidered onto the shoulder."
	icon_state = "inteq_skirt"
	item_state = "bl_suit"
	has_sensor = HAS_SENSORS
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	body_parts_covered = CHEST|GROIN|ARMS
	supports_variations = DIGITIGRADE_VARIATION_NO_NEW_ICON | VOX_VARIATION | KEPORI_VARIATION
	alt_covers_chest = TRUE

/obj/item/clothing/under/inteq/artificer
	name = "inteq artificer overalls"
	desc = "A black set of overalls atop a standard issue turtleneck, for the IRMG's support division Artificers."
	icon_state = "inteqeng"
	supports_variations = KEPORI_VARIATION | VOX_VARIATION | DIGITIGRADE_VARIATION

/obj/item/clothing/under/inteq/skirt/artificer
	name = "inteq artificer overall skirt"
	desc = "A black set of overalls in the likeness of a skirt atop a standard issue turtleneck, for the IRMG's support division Artificers."
	icon_state = "inteqeng_skirt"
	supports_variations = KEPORI_VARIATION | DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/inteq/corpsman
	name = "inteq corpsman turtleneck"
	desc = "A sterile white turtleneck with tactical cargo pants, it is emblazoned with the lettering 'IRMG' on the shoulder. For the IRMG's support division Corpsmen."
	icon_state = "inteqmed"
	supports_variations = KEPORI_VARIATION | VOX_VARIATION | DIGITIGRADE_VARIATION

/obj/item/clothing/under/inteq/skirt/corpsman
	name = "inteq corpsman skirtleneck"
	desc = "A sterile white turtleneck with a free flowing black skirt, it is emblazoned with the lettering 'IRMG' on the shoulder. For the IRMG's support division Corpsmen."
	icon_state = "inteqmed_skirt"
	supports_variations = KEPORI_VARIATION | DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/inteq/skirt/maid
	name = "inteq tactical maid outfit"
	desc = "A 'tactical' turtleneck fashioned to the likeness of a maid outfit. This one is lovingly knitted in the colors of the IRMG."
	icon_state = "inteqmaid"
	item_state = "inteqmaid"
	can_adjust = FALSE
	supports_variations = KEPORI_VARIATION | VOX_VARIATION | DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/inteq/skirt/maid/Initialize()
	. = ..()
	var/obj/item/clothing/accessory/maidapron/inteq/A = new (src)
	attach_accessory(A)

/obj/item/clothing/under/inteq/honorable
	name = "honorable vanguard turtleneck"
	desc = "a midnight black turtleneck worn by honorable Vanguards of the IRMG."
	icon_state = "inteq_honorable"
	item_state = "inteq_honorable"
	supports_variations = KEPORI_VARIATION | DIGITIGRADE_VARIATION

// suit

//Pointman Hardsuit

/obj/item/clothing/suit/space/hardsuit/syndi/inteq
	name = "pointman hardsuit"
	desc = "One of Inteq's strudiest and finest combat armors. It is in EVA mode. Retrofitted by the IRMG."
	alt_desc = "One of Inteq's strudiest and finest combat armors. It is in combat mode. Retrofitted by the IRMG."
	icon_state = "hardsuit1-pointman"
	hardsuit_type = "pointman"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/inteq
	supports_variations = VOX_VARIATION


/obj/item/clothing/head/helmet/space/hardsuit/syndi/inteq
	name = "pointman hardsuit helmet"
	desc = "One of Inteq's strudiest and finest combat armors. It is in EVA mode. Retrofitted by the IRMG."
	alt_desc = "One of Inteq's strudiest and finest combat armors. It is in combat mode. Retrofitted by the IRMG."
	icon_state = "hardsuit1-pointman"
	hardsuit_type = "pointman"
	full_retraction = TRUE


// masks

/obj/item/clothing/mask/gas/sechailer/inteq
	name = "balaclava"
	desc = "A fancy balaclava. While it doesn't muffle your voice, it has a miniature rebreather for internals. Comfy to boot!"
	icon_state = "inteq_balaclava"
	item_state = "inteq_balaclava"
	strip_delay = 60
	alternate_worn_layer = BODY_LAYER
	flags_inv = HIDEFACIALHAIR|HIDEFACE|HIDEEARS|HIDEHAIR

// hats

/obj/item/clothing/head/beret/sec/inteq
	name = "inteq beret"
	desc = "A comfortable looking brown beret with a badge of the golden shield of the IRMG. Denotes the wearer as part of the IRMG."
	icon_state = "inteq_beret"
	item_state = "inteq_beret"

/obj/item/clothing/head/beret/sec/hos/inteq
	name = "inteq vanguard beret"
	desc = "A comfortable looking brown beret with a badge of the golden shield of the IRMG. Denotes the wearer as a vanguard of the IRMG. The padding inside feels thicker."
	icon_state = "inteq_beret"
	item_state = "inteq_beret"

/obj/item/clothing/head/beret/sec/hos/inteq/honorable
	name = "honorable vanguard beret"
	desc = "A snow white beret with an air of distinction around it, emblazoned with the golden shield of the IRMG as the badge."
	icon_state = "inteq_honorable_beret"
	item_state = "inteq_honorable_beret"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 50, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 70, "acid" = 90)

/obj/item/clothing/head/soft/inteq
	name = "inteq utility cover"
	desc = "A rich brown utility cover with the golden shield of the IRMG on it."
	icon_state = "inteqsoft"
	soft_type = "inteq"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 25, "energy" = 35, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 50)
	dog_fashion = null

/obj/item/clothing/head/soft/inteq/corpsman
	name = "inteq corpsman utility cover"
	desc = "A sterile white utility cover with a green cross emblazoned on it. Worn by the IRMG's support division Corpsmen."
	icon_state = "inteqmedsoft"
	soft_type = "inteqmed"
	dog_fashion = null

/obj/item/clothing/head/helmet/swat/inteq
	name = "inteq SWAT helmet"
	desc = "A robust and spaceworthy helmet with an opaque gold visor. There is an insignia on the earpad with the letters 'IRMG' on it."
	icon_state = "inteq_swat"
	item_state = "inteq_swat"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/helmet/inteq
	name = "inteq helmet"
	desc = "A standard issue helmet in the colors of the IRMG. It doesn't feel special in any way."
	icon_state = "inteq_helmet"
	icon_state = "inteq_helmet"
	can_flashlight = TRUE
