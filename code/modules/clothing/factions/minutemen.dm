// under

/obj/item/clothing/under/minutemen
	name = "colonial minutemen jumpsuit"
	desc = "A jumpsuit worn by low ranking members of the Colonial Minutemen."
	icon_state = "minuteman"
	item_state = "b_suit"
	can_adjust = FALSE
	supports_variations = DIGITIGRADE_VARIATION

/obj/item/clothing/under/minutemen/officer
	name = "colonial minutemen officer uniform"
	desc = "A uniform used by officers of the Colonial Minutemen."
	icon_state = "minuteman_officer"
	item_state = "g_suit"
	can_adjust = FALSE


// suits

/obj/item/clothing/suit/space/hardsuit/security/independent/minutemen
	name = "\improper CMM Patroller hardsuit"
	desc = "A hardsuit used by the Minutemen. To reduce costs, its a modified version of a more popular model from a independent manufacturer, and given to patrol vessels."
	icon_state = "hardsuit-cmm-patrol"
	hardsuit_type = "hardsuit-cmm-patrol"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security/independent/minutemen

/obj/item/clothing/head/helmet/space/hardsuit/security/independent/minutemen
	name = "\improper CMM Patroller hardsuit helmet"
	desc = "A hardsuit used by the Minutemen. To reduce costs, its a modified version of a more popular model from a independent manufacturer, and given to patrol vessels."
	icon_state = "hardsuit0-cmm-patrol"
	hardsuit_type = "cmm-patrol"

/obj/item/clothing/suit/armor/vest/capcarapace/minutemen
	name = "colonial minutemen general coat"
	desc = "A very fancy coat used by generals of the Colonial Minutemen."
	icon_state = "carapace_minutemen"
	item_state = "carapace_minutemen"

/obj/item/clothing/suit/armor/riot/minutemen
	name = "black riot suit"
	desc = "Designed to protect against close range attacks. This one is painted black. Mainly used by the CM-BARD against hostile xenofauna, it also sees prolific use on some Minutemen member worlds."
	icon_state = "riot_minutemen"

/obj/item/clothing/suit/toggle/lawyer/minutemen
	name = "minutemen suit jacket"
	desc = "An enterprising dress jacket used by officers of the Colonial Minutemen."
	icon_state = "suitjacket_minuteman"
	item_state = "suitjacket_navy"

/obj/item/clothing/suit/toggle/lawyer/minutemen/Initialize()
	. = ..()
	if(!allowed)
		allowed = GLOB.security_vest_allowed //it's hop-equivalent gear after all

// hats

/obj/item/clothing/head/caphat/minutemen
	name = "general's bicorne"
	desc = "A fancy bicorne used by generals of the Colonial Minutemen."
	icon_state = "minuteman_general_hat"

/obj/item/clothing/head/cowboy/sec/minutemen
	name = "colonial minutmen officer's slouch hat"
	desc = "A commanding slouch hat adorned with a offier's badge, used by the Colonial Minutemen."
	icon_state = "minuteman_officer_hat"

/obj/item/clothing/head/helmet/riot/minutemen
	name = "\improper Minutemen riot helmet"
	desc = "Designed to protect against close range attacks. Mainly used by the CM-BARD against hostile xenofauna, it also sees prolific use on some Minutemen member worlds."
	icon_state = "riot_minutemen"

/obj/item/clothing/head/helmet/bulletproof/minutemen
	name = "\improper Minutemen ballistic helmet"
	desc = "A bulletproof helmet that is worn by members of the Colonial Minutemen."
	icon_state = "antichristhelm"
	allow_post_reskins = TRUE
	unique_reskin = null
	armor = list("melee" = 15, "bullet" = 60, "laser" = 10, "energy" = 10, "bomb" = 40, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)

// masks

/obj/item/clothing/mask/gas/sechailer/minutemen
	name = "combat balaclava"
	desc = "A surprisingly advanced balaclava equipped with internals tubing. Widely used by frontier militias."
	icon_state = "rus_balaclava"
	item_state = "rus_balaclava"
	strip_delay = 60
	flags_inv = HIDEFACIALHAIR|HIDEFACE|HIDEEARS|HIDEHAIR

// belts

/obj/item/storage/belt/military/minutemen
	name = "minutemen tactical webbing"
	desc = "A set of tactical webbing worn by the Colonial Minutemen of the frontier."
	icon_state = "cmmwebbing"
	item_state = "cmmwebbing"

/obj/item/storage/belt/military/minutemen/loaded/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_box/magazine/p16(src)


// headset
/obj/item/radio/headset/minutemen
	name = "minutemen radio headset"
	desc = "Used by militias flying the five stars of the Colonial Minutemen."
	icon_state = "cmm_headset"
	keyslot = new /obj/item/encryptionkey/minutemen

/obj/item/radio/headset/minutemen/captain
	name = "minuteman officer radio headset"
	desc = "Used by the Colonial Minutemen's enlisted officers."
	keyslot2 = new /obj/item/encryptionkey/heads/captain
	command = TRUE

/obj/item/radio/headset/minutemen/alt
	name = "minutemen bowman headset"
	desc = "Used by militias flying the five stars of the Colonial Minutemen. Protects ears from flashbangs."
	icon_state = "cmm_headset_alt"
	item_state = "cmm_headset_alt"

/obj/item/radio/headset/minutemen/alt/captain
	name = "minuteman officer bowman headset"
	desc = "Used by the Colonial Minutemen's enlisted officers. Protects ears from flashbangs."
	keyslot2 = new /obj/item/encryptionkey/heads/captain
	command = TRUE

/obj/item/radio/headset/minutemen/alt/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))
