// under

/obj/item/clothing/under/solgov
	name = "\improper SolGov tunic"
	desc = "Standard combat tunic used by Sonnensoldners."
	icon = 'icons/obj/clothing/under/solgov.dmi'
	mob_overlay_icon = 'icons/mob/clothing/under/solgov.dmi'
	icon_state = "solgov_tunic"
	item_state = "solgov_tunic"
	armor = list("melee" = 10, "fire" = 30, "acid" = 30)
	strip_delay = 50
	can_adjust = FALSE
	supports_variations = DIGITIGRADE_VARIATION

/obj/item/clothing/under/solgov/terragov
	name = "\improper TerraGov tunic"
	desc = "Specialized combat tunic utilized by Sonnensoldners serving the Terran Regency."
	icon_state = "terragov_tunic"
	item_state = "terragov_tunic"
	armor = list("melee" = 15, "fire" = 30, "acid" = 30)
	can_adjust = FALSE

/obj/item/clothing/under/solgov/dress
	name = "\improper SolGov dress"
	desc = "A formal SolGov white dress, used by civilians and officials alike."
	icon_state = "solgov_dress"
	item_state = "solgov_dress"

/obj/item/clothing/under/solgov/formal
	name = "\improper SolGov formal suit"
	desc = "A formal SolGov uniform, commonly used by representatives and officials."
	icon_state = "formal_solgov"
	item_state = "formal_solgov"
	can_adjust = FALSE

/obj/item/clothing/under/solgov/formal/skirt
	name = "\improper SolGov formal suitskirt"
	desc = "A formal SolGov uniform, commonly used by representatives and officials."
	icon_state = "formal_solgov_skirt"
	item_state = "formal_solgov_skirt"
	can_adjust = FALSE

/obj/item/clothing/under/solgov/formal/terragov
	name = "\improper TerraGov formal uniform"
	desc = "A formal SolGov uniform, for special occasions. This one is colored in original TerraGov green."
	icon_state = "formal_terragov"
	item_state = "formal_terragov"
	can_adjust = FALSE

/obj/item/clothing/under/plasmaman/solgov
	name = "\improper SolGov envirosuit"
	desc = "The pride of Solarian plasmamen everywhere- though this tends to be a somewhat exclusive club, due to Sol's agressive workplace safety regulations."
	icon = 'icons/obj/clothing/under/solgov.dmi' //ogan i am going to kill you i stg
	mob_overlay_icon = 'icons/mob/clothing/under/solgov.dmi'
	icon_state = "plasma_solgov"
	item_state = "plasma_solgov"
	can_adjust = FALSE

/obj/item/clothing/under/solgov/formal/captain
	name = "\improper SolGov captain uniform"
	desc = "A formal SolGov uniform, utilized by captains of SolGov vessels."
	icon_state = "solgov_captain"
	item_state = "solgov_captain"
	can_adjust = FALSE

// hats

/obj/item/clothing/head/solgov
	name = "\improper SolGov officer's cap"
	desc = "A blue cap worn by high-ranking officers of SolGov."
	armor = list("melee" = 40, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 60)
	icon_state = "cap_solgov"
	item_state = "cap_solgov"
	strip_delay = 80

/obj/item/clothing/head/solgov/terragov
	name = "\improper TerraGov officer's cap"
	desc = "A cap worn by high-ranking officers of SolGov. This one is still in original TerraGov green."
	armor = list("melee" = 40, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 60)
	icon_state = "cap_terragov"
	item_state = "cap_terragov"

/obj/item/clothing/head/beret/solgov
	name = "\improper SolGov beret"
	desc = "A beret with SolGov's emblem emblazoned on it. Colored in SolGov blue."
	icon_state = "beret_solgov"
	item_state = "beret_solgov"
	armor = list("melee" = 40, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 60)

/obj/item/clothing/head/beret/solgov/plain
	name = "\improper SolGov beret"
	desc = "A plain blue beret. It looks like it's missing something."
	icon_state = "beret_solgovplain"
	item_state = "beret_solgovplain"

/obj/item/clothing/head/beret/solgov/terragov
	name = "\improper TerraGov beret"
	desc = "A beret with SolGov's emblem emblazoned on it. It's still colored in original TerraGov green."
	icon_state = "beret_terragov"
	item_state = "beret_terragov"

/obj/item/clothing/head/beret/solgov/terragov/plain
	name = "\improper TerraGov beret"
	desc = "A plain beret colored in original TerraGov green. It looks like it's missing something."
	icon_state = "beret_terragovplain"
	item_state = "beret_terragovplain"

/obj/item/clothing/head/hardhat/solgov
	icon_state = "hardhat_solgov"
	item_state = "hardhat_solgov"
	dog_fashion = null

/obj/item/clothing/head/solgov/sonnensoldner
	name = "\improper Sonnensoldner Hat"
	desc = "A standard-issue SolGov hat adorned with a feather, commonly used by Sonnensoldners."
	icon_state = "sonnensoldner_hat"
	item_state = "sonnensoldner_hat"
	worn_y_offset = 4
	dog_fashion = null
	armor = list("melee" = 40, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 60)

/obj/item/clothing/head/solgov/captain
	name = "\improper SolGov bicorne hat"
	desc = "A unique bicorne hat given to Solarian Captains on expeditionary missions."
	icon_state = "solgov_bicorne"
	item_state = "solgov_bicorne"
	worn_y_offset = 2
	dog_fashion = null
	armor = list("melee" = 40, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 60)

/obj/item/clothing/head/helmet/space/plasmaman/solgov
	name = "\improper SolGov envirosuit helmet"
	desc = "A generic white envirohelmet with a secondary blue."
	icon_state = "solgov_envirohelm"
	item_state = "solgov_envirohelm"

// headset

/obj/item/radio/headset/solgov
	name = "\improper SolGov headset"
	desc = "Worn by bureaucrats and, occasionally, Sonnensoldneren."
	icon_state = "solgov_headset"
	keyslot = new /obj/item/encryptionkey/solgov

/obj/item/radio/headset/solgov/captain
	name = "\improper SolGov official radio headset"
	desc = "Worn by various officials and leaders from SolGov. Fancy hat not included."
	keyslot2 = new /obj/item/encryptionkey/heads/captain
	command = TRUE

/obj/item/radio/headset/solgov/alt
	name = "\improper SolGov bowman headset"
	desc = "Worn by bureaucrats and, occasionally, Sonnensoldneren. Protects ears from flashbangs."
	icon_state = "solgov_headset_alt"

/obj/item/radio/headset/solgov/alt/captain
	name = "\improper SolGov official bowman headset"
	desc = "Worn by various officials and leaders from SolGov. Fancy hat not included. Protects ears from flashbangs."
	keyslot2 = new /obj/item/encryptionkey/heads/captain
	command = TRUE

/obj/item/radio/headset/solgov/alt/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))
