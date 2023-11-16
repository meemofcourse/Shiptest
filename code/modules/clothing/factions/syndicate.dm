// under

/obj/item/clothing/under/syndicate
	name = "tactical turtleneck"
	desc = "A non-descript and slightly suspicious looking turtleneck with digital camouflage cargo pants."
	icon_state = "syndicate"
	item_state = "bl_suit"
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	alt_covers_chest = TRUE
	icon = 'icons/obj/clothing/faction/syndicate/under.dmi'
	mob_overlay_icon = 'icons/mob/clothing/faction/syndicate/under.dmi'
	supports_variations = DIGITIGRADE_VARIATION | VOX_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/skirt
	name = "tactical skirtleneck"
	desc = "A non-descript and slightly suspicious looking skirtleneck."
	icon_state = "syndicate_skirt"
	item_state = "bl_suit"
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	alt_covers_chest = TRUE
	can_adjust = FALSE
	supports_variations = DIGITIGRADE_VARIATION_NO_NEW_ICON | VOX_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/bloodred
	name = "blood-red sneaksuit"
	desc = "It still counts as stealth if there are no witnesses."
	icon_state = "bloodred_pajamas"
	item_state = "bl_suit"
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10,"energy" = 10, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 50, "acid" = 40)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	can_adjust = FALSE
	supports_variations = DIGITIGRADE_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/bloodred/sleepytime
	name = "blood-red pajamas"
	desc = "Do operatives dream of nuclear sheep?"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)

/obj/item/clothing/under/syndicate/skirt/maid
	name = "tactical maid outfit"
	desc = "A 'tactical' turtleneck fashioned to the likeness of a maid outfit. Why the Syndicate has these, you'll never know."
	icon_state = "syndimaid"
	item_state = "syndimaid"

/obj/item/clothing/under/syndicate/skirt/maid/Initialize()
	. = ..()
	var/obj/item/clothing/accessory/maidapron/syndicate/A = new (src)
	attach_accessory(A)

/obj/item/clothing/under/syndicate/tacticool
	name = "tacticool turtleneck"
	desc = "This seems like a cheap copy of a syndicate turtleneck."
	icon_state = "tactifool"
	item_state = "bl_suit"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	supports_variations = DIGITIGRADE_VARIATION | VOX_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/tacticool/skirt
	name = "tacticool skirtleneck"
	desc = "This seems like a cheap copy of a syndicate skirtleneck."
	icon_state = "tactifool_skirt"
	item_state = "bl_suit"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	can_adjust = FALSE
	supports_variations = DIGITIGRADE_VARIATION_NO_NEW_ICON | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/sniper
	name = "tactical turtleneck suit"
	desc = "A double seamed tactical turtleneck disguised as a civilian grade silk suit. Intended for the most formal operator. The collar is really sharp."
	icon = 'icons/obj/clothing/under/suits.dmi'
	icon_state = "really_black_suit"
	item_state = "bl_suit"
	mob_overlay_icon = 'icons/mob/clothing/under/suits.dmi'
	can_adjust = FALSE

/obj/item/clothing/under/syndicate/camo
	name = "camouflage fatigues"
	desc = "A green military camouflage uniform."
	icon_state = "camogreen"
	item_state = "g_suit"
	can_adjust = FALSE

/obj/item/clothing/under/syndicate/combat
	name = "combat uniform"
	desc = "With a suit lined with this many pockets, you are ready to operate."
	icon_state = "syndicate_combat"
	can_adjust = FALSE
	supports_variations = DIGITIGRADE_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/officer
	name = "syndicate officer uniform"
	desc = "A versatile black uniform worn by many officers of the Syndicate."
	icon_state = "officer"
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	alt_covers_chest = TRUE

/obj/item/clothing/under/syndicate/aclf
	name = "ACLF uniform"
	desc = "A button-up in a tasteful shade of gray with red pants, used as the uniform of the Anti-Corporate Liberation front on the rim."
	icon_state = "aclf"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	alt_covers_chest = TRUE

/obj/item/clothing/under/syndicate/gorlex
	name = "Gorlex Marauder uniform"
	desc = "Originally worn by the miners of the Gorlex VII colony."
	icon_state = "gorlex"
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	alt_covers_chest = TRUE
	supports_variations = DIGITIGRADE_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/cybersun
	name = "Cybersun coveralls"
	desc = "Nomex coveralls worn by workers and research personnel employed by Cybersun industries."
	icon_state = "cybersun"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 60, "acid" = 100)
	alt_covers_chest = TRUE
	supports_variations = DIGITIGRADE_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/cybersun/medic
	name = "Cybersun medical jumpsuit"
	desc = "Sterile coveralls worn by Cybersun Industries field medics for protection against biological hazards."
	icon_state = "cybersun_med"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/syndicate/cybersun/medic/skirt
	name = "Cybersun medical jumpskirt"
	desc = "A sterile jumpskirt worn by Cybersun Industries field medics for protection against biological hazards."
	icon_state = "cybersun_med_skirt"
	body_parts_covered = CHEST|GROIN|ARMS
	can_adjust = FALSE
	supports_variations = DIGITIGRADE_VARIATION_NO_NEW_ICON | VOX_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/donk
	name = "Donk! Co. employee uniform"
	desc = "The standard employee uniform of Donk Co. Smells like minimum wage."
	icon_state = "donk_cargo"
	armor = list("melee" = 10, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	body_parts_covered = CHEST|GROIN|ARMS
	alt_covers_chest = TRUE
	supports_variations = DIGITIGRADE_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/donk/qm
	name = "Donk! Co. manager uniform"
	desc = "The standard uniform of Donk Co. managers. Direct all complaints here."
	icon_state = "donk_qm"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	supports_variations = DIGITIGRADE_VARIATION | KEPORI_VARIATION

/obj/item/clothing/under/syndicate/gec
	name = "GEC engineer jumpsuit"
	desc = "A jumpsuit worn by GEC members. This one is worn by engineers."
	icon_state = "gec_engineer"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 60, "acid" = 20)
	resistance_flags = NONE

/obj/item/clothing/under/syndicate/gec/atmos_tech
	name = "GEC atmospheric technician jumpsuit"
	desc = "A jumpsuit worn by GEC members. This one is worn by atmospheric technicians."
	icon_state = "gec_atmos"

/obj/item/clothing/under/syndicate/gec/chief_engineer
	name = "GEC chief engineer jumpsuit"
	desc = "A jumpsuit worn by GEC members. This one is worn by chief engineers."
	icon_state = "gec_ce"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 80, "acid" = 40)

// suits

/obj/item/clothing/head/helmet/space/hardsuit/syndi
	name = "blood-red hardsuit helmet"
	desc = "A dual-mode advanced hardsuit designed for special combat operations. It is in EVA mode. Produced by the Gorlex Marauders."
	alt_desc = "A dual-mode advanced hardsuit designed for special combat operations. It is in combat mode. Produced by the Gorlex Marauders."
	icon_state = "hardsuit1-syndi"
	item_state = "syndie_helm"
	hardsuit_type = "syndi"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 90)
	on = TRUE
	var/obj/item/clothing/suit/space/hardsuit/syndi/linkedsuit = null
	actions_types = list(/datum/action/item_action/toggle_helmet_mode)
	visor_flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEFACIALHAIR|HIDEEARS
	visor_flags = STOPSPRESSUREDAMAGE
	var/full_retraction = FALSE //whether or not our full face is revealed or not during combat mode

/obj/item/clothing/head/helmet/space/hardsuit/syndi/update_icon_state()
	icon_state = "hardsuit[on]-[hardsuit_type]"
	return ..()

/obj/item/clothing/head/helmet/space/hardsuit/syndi/Initialize()
	. = ..()
	if(istype(loc, /obj/item/clothing/suit/space/hardsuit/syndi))
		linkedsuit = loc

/obj/item/clothing/head/helmet/space/hardsuit/syndi/attack_self(mob/user) //Toggle Helmet
	if(!isturf(user.loc))
		to_chat(user, "<span class='warning'>You cannot toggle your helmet while in this [user.loc]!</span>" )
		return
	on = !on
	if(on || force)
		to_chat(user, "<span class='notice'>You switch your hardsuit to EVA mode, sacrificing speed for space protection.</span>")
		name = initial(name)
		desc = initial(desc)
		set_light_on(TRUE)
		clothing_flags |= visor_flags
		cold_protection |= HEAD
		if(full_retraction)
			flags_cover |= HEADCOVERSEYES | HEADCOVERSMOUTH
		else
			flags_cover |= HEADCOVERSMOUTH
		flags_inv |= visor_flags_inv
	else
		to_chat(user, "<span class='notice'>You switch your hardsuit to combat mode, sacrificing space protection for improved speed.</span>")
		name += " (combat)"
		desc = alt_desc
		set_light_on(FALSE)
		clothing_flags &= ~visor_flags
		cold_protection &= ~HEAD
		if(full_retraction)
			flags_cover &= ~(HEADCOVERSEYES | HEADCOVERSMOUTH)
		else
			flags_cover &= ~(HEADCOVERSMOUTH)
		flags_inv &= ~visor_flags_inv
	update_appearance()
	playsound(src.loc, 'sound/mecha/mechmove03.ogg', 50, TRUE)
	toggle_hardsuit_mode(user)
	user.update_inv_head()
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/space/hardsuit/syndi/proc/toggle_hardsuit_mode(mob/user) //Helmet Toggles Suit Mode
	if(linkedsuit)
		if(on)
			linkedsuit.name = initial(linkedsuit.name)
			linkedsuit.desc = initial(linkedsuit.desc)
			linkedsuit.slowdown = 1
			linkedsuit.clothing_flags |= STOPSPRESSUREDAMAGE
			linkedsuit.cold_protection |= CHEST | GROIN | LEGS | FEET | ARMS | HANDS
		else
			linkedsuit.name += " (combat)"
			linkedsuit.desc = linkedsuit.alt_desc
			linkedsuit.slowdown = linkedsuit.combat_slowdown
			linkedsuit.clothing_flags &= ~STOPSPRESSUREDAMAGE
			linkedsuit.cold_protection &= ~(CHEST | GROIN | LEGS | FEET | ARMS | HANDS)
			if(linkedsuit.lightweight)
				linkedsuit.flags_inv &= ~(HIDEGLOVES | HIDESHOES | HIDEJUMPSUIT)

		linkedsuit.icon_state = "hardsuit[on]-[hardsuit_type]"
		linkedsuit.update_appearance()
		user.update_inv_wear_suit()
		user.update_inv_w_uniform()
		user.update_equipment_speed_mods()


/obj/item/clothing/suit/space/hardsuit/syndi
	name = "blood-red hardsuit"
	desc = "A dual-mode advanced hardsuit designed for special combat operations. It is in EVA mode. Produced by the Gorlex Marauders."
	alt_desc = "A dual-mode advanced hardsuit designed for special combat operations. It is in combat mode. Produced by the Gorlex Marauders."
	icon_state = "hardsuit1-syndi"
	item_state = "syndie_hardsuit"
	hardsuit_type = "syndi"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 90)
	allowed = list(/obj/item/gun, /obj/item/ammo_box,/obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/melee/transforming/energy/sword/saber, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi
	jetpack = /obj/item/tank/jetpack/suit
	supports_variations = DIGITIGRADE_VARIATION | VOX_VARIATION
	var/combat_slowdown = 0 //slowdown when in combat mode
	var/lightweight = 0 //used for flags when toggling

//Scarlet Syndie suit
/obj/item/clothing/head/helmet/space/hardsuit/syndi/scarlet
	name = "scarlet hardsuit helmet"
	desc = "A standardized dual-mode helmet derived from more advanced special operations helmets. It is in EVA mode. Manufactured by Donk Co."
	alt_desc = "A standardized dual-mode helmet derived from more advanced special operations helmets. It is in combat mode. Manufactured by Donk Co."
	icon_state = "hardsuit1-scarlet"
	item_state = "scarlet_helm"
	hardsuit_type = "scarlet"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 20,"energy" = 40, "bomb" = 10, "bio" = 100, "rad" = 50, "fire" = 75, "acid" = 75)

/obj/item/clothing/suit/space/hardsuit/syndi/scarlet
	name = "scarlet hardsuit"
	desc = "A standardized dual-mode hardsuit derived from more advanced special operations hardsuits. It is in EVA mode. Manufactured by Donk Co."
	alt_desc = "A standardized dual-mode hardsuit derived from more advanced special operations hardsuits. It is in combat mode. Manufactured by Donk Co."
	icon_state = "hardsuit1-scarlet"
	item_state = "scarlet_hardsuit"
	hardsuit_type = "scarlet"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/scarlet
	lightweight = 1
	jetpack = null
	armor = list("melee" = 35, "bullet" = 25, "laser" = 20,"energy" = 40, "bomb" = 10, "bio" = 100, "rad" = 50, "fire" = 75, "acid" = 75)
	combat_slowdown = 0.5
	jetpack = null

//Elite Syndie suit
/obj/item/clothing/head/helmet/space/hardsuit/syndi/elite
	name = "elite syndicate hardsuit helmet"
	desc = "An elite version of the syndicate helmet, with improved armour and fireproofing. It is in EVA mode. Property of Gorlex Marauders."
	alt_desc = "An elite version of the syndicate helmet, with improved armour and fireproofing. It is in combat mode. Property of Gorlex Marauders."
	icon_state = "hardsuit0-syndielite"
	hardsuit_type = "syndielite"
	armor = list("melee" = 60, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 55, "bio" = 100, "rad" = 70, "fire" = 100, "acid" = 100)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	full_retraction = TRUE

/obj/item/clothing/head/helmet/space/hardsuit/syndi/elite/debug

/obj/item/clothing/head/helmet/space/hardsuit/syndi/elite/debug/Initialize()
	. = ..()
	soundloop.volume = 0

/obj/item/clothing/suit/space/hardsuit/syndi/elite
	name = "elite syndicate hardsuit"
	desc = "An elite version of the syndicate hardsuit, with improved armour and fireproofing. It is in travel mode."
	alt_desc = "An elite version of the syndicate hardsuit, with improved armour and fireproofing. It is in combat mode."
	icon_state = "hardsuit0-syndielite"
	item_state = "elitesyndie_hardsuit"
	hardsuit_type = "syndielite"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/elite
	armor = list("melee" = 60, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 55, "bio" = 100, "rad" = 70, "fire" = 100, "acid" = 100)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	supports_variations = DIGITIGRADE_VARIATION | VOX_VARIATION

/obj/item/clothing/suit/space/hardsuit/syndi/elite/debug
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/elite/debug

//Cybersun Hardsuit
/obj/item/clothing/suit/space/hardsuit/syndi/cybersun
	name = "neutron-star combat hardsuit"
	desc = "Designed with fighting Nanotrasen weapons in mind, the Cybersun combat hardsuit trades ballistic and blunt protection for top grade laser protection. It is in EVA mode. Produced by Cybersun Industries."
	alt_desc = "Designed with fighting Nanotrasen weapons in mind, the Cybersun combat hardsuit trades ballistic and blunt protection for top grade laser protection. It is in combat mode. Produced by Cybersun Industries."
	icon_state = "hardsuit1-cybersun"
	hardsuit_type = "cybersun"
	armor = list("melee" = 25, "bullet" = 25, "laser" = 50, "energy" = 50, "bomb" = 25, "bio" = 100, "rad" = 60, "fire" = 60, "acid" = 60)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/cybersun
	supports_variations = VOX_VARIATION

/obj/item/clothing/head/helmet/space/hardsuit/syndi/cybersun
	name = "neutron-star combat hardsuit helmet"
	desc = "Designed with fighting Nanotrasen weapons in mind, the Cybersun combat hardsuit trades ballistic and blunt protection for top grade laser protection. It is in EVA mode. Produced by Cybersun Industries."
	alt_desc = "Designed with fighting Nanotrasen weapons in mind, the Cybersun combat hardsuit trades ballistic and blunt protection for top grade laser protection. It is in combat mode. Produced by Cybersun Industries."
	icon_state = "hardsuit1-cybersun"
	hardsuit_type = "cybersun"
	armor = list("melee" = 25, "bullet" = 25, "laser" = 50, "energy" = 50, "bomb" = 25, "bio" = 100, "rad" = 60, "fire" = 60, "acid" = 60)

//Cybersun Medical Techinician Hardsuit
/obj/item/clothing/suit/space/hardsuit/syndi/cybersun/paramed
	name = "cybersun medical technician hardsuit"
	desc = "A stripped down version of the neutron-star hardsuit for use by medical technicians. It is in EVA mode. Produced by Cybersun Industries."
	alt_desc = "A stripped down version of the neutron-star hardsuit for use by medical technicians. It is in combat mode. Produced by Cybersun Industries."
	icon_state = "hardsuit1-cyberparamed"
	hardsuit_type = "cyberparamed"
	armor = list("melee" = 25, "bullet" = 25, "laser" = 35, "energy" = 40, "bomb" = 10, "bio" = 100, "rad" = 65, "fire" = 75, "acid" = 40)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/cybersun/paramed
	supports_variations = VOX_VARIATION
	combat_slowdown = 0.4
	jetpack = null

/obj/item/clothing/head/helmet/space/hardsuit/syndi/cybersun/paramed
	name = "cybersun medical technician hardsuit helmet"
	desc = "A stripped down version of the neutron-star hardsuit for use by medical technicians. It is in EVA mode. Produced by Cybersun Industries."
	alt_desc = "A stripped down version of the neutron-star hardsuit for use by medical technicians. It is in combat mode. Produced by Cybersun Industries"
	icon_state = "hardsuit1-cyberparamed"
	hardsuit_type = "cyberparamed"
	armor = list("melee" = 25, "bullet" = 25, "laser" = 35, "energy" = 40, "bomb" = 10, "bio" = 100, "rad" = 65, "fire" = 75, "acid" = 40)

/obj/item/clothing/suit/gorlex_captain
	name = "\improper 2nd Battlegroup jacket"
	desc = "An armored jacket worn by officers of the 2nd Battlegroup."
	body_parts_covered = CHEST|GROIN|ARMS|HANDS
	icon_state = "gorlex_jacket"
	item_state = "gorlex_jacket"
	blood_overlay_type = "coat"
	armor = list("melee" = 35, "bullet" = 30, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)

/obj/item/clothing/suit/armor/vest/syndie
	name = "\improper Syndicate plate carrier"
	desc = "A plate carrier vest commonly used by Syndicate forces, regardless of affiliation. Has a few attached pouches."
	icon_state = "armor_syndie"
	item_state = "syndiearmor"

/obj/item/clothing/suit/hazardvest/donk
	name = "Donk! Co. employee vest"
	desc = "A vest used to easily identify employees. It has a name tag attached. It reads: 'Hello! My name is..' It's not filled in."
	icon_state = "donk_cargo_vest"

/obj/item/clothing/suit/hazardvest/donk/qm
	name = "Donk! Co. manager vest"
	desc = "A vest used to easily identify managers. It has a name tag attached. It reads: 'Hello! My name is... THE BOSS'"
	icon_state = "donk_qm_vest"

// masks

/obj/item/clothing/mask/gas/syndicate
	name = "syndicate mask"
	desc = "A close-fitting tactical mask that can be connected to an air supply."
	icon_state = "syndicate"
	strip_delay = 60

/obj/item/clothing/mask/gas/syndicate/voicechanger
	var/voice_change = 1

/obj/item/clothing/mask/infiltrator
	name = "infiltrator balaclava"
	desc = "It makes you feel safe in your anonymity, but for a stealth outfit, you sure do look obvious that you're up to no good. It seems to have a built in heads-up display."
	icon_state = "syndicate_balaclava"
	item_state = "syndicate_balaclava"
	clothing_flags = ALLOWINTERNALS
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	visor_flags_inv = HIDEFACE|HIDEFACIALHAIR
	w_class = WEIGHT_CLASS_SMALL
	armor = list("melee" = 10, "bullet" = 5, "laser" = 5,"energy" = 5, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 100, "acid" = 40)
	resistance_flags = FIRE_PROOF | ACID_PROOF

	var/voice_unknown = FALSE ///This makes it so that your name shows up as unknown when wearing the mask.

/obj/item/clothing/mask/infiltrator/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	if(slot != ITEM_SLOT_MASK)
		return
	to_chat(user, "You roll the balaclava over your face, and a data display appears before your eyes.")
	ADD_TRAIT(user, TRAIT_DIAGNOSTIC_HUD, MASK_TRAIT)
	var/datum/atom_hud/H = GLOB.huds[DATA_HUD_DIAGNOSTIC_BASIC]
	H.add_hud_to(user)
	voice_unknown = TRUE

/obj/item/clothing/mask/infiltrator/dropped(mob/living/carbon/human/user)
	to_chat(user, "You pull off the balaclava, and the mask's internal hud system switches off quietly.")
	REMOVE_TRAIT(user, TRAIT_DIAGNOSTIC_HUD, MASK_TRAIT)
	var/datum/atom_hud/H = GLOB.huds[DATA_HUD_DIAGNOSTIC_BASIC]
	H.remove_hud_from(user)
	voice_unknown = FALSE
	return ..()

// hats

/obj/item/clothing/head/HoS/syndicate
	name = "syndicate cap"
	desc = "A black cap fit for a high ranking syndicate officer."

/obj/item/clothing/head/HoS/cybersun
	name = "cybersun hat"
	desc = "A crimson-red hat fit for a high ranking cybersun officer."
	icon_state = "cybersunhat"
	item_state = "cybersunhat"

/obj/item/clothing/head/HoS/beret/syndicate
	name = "syndicate beret"
	desc = "A black beret with thick armor padding inside. Stylish and robust."
	icon_state = "beret_officer"
	item_state = "beret_officer"

/obj/item/clothing/head/gorlex_captain
	name = "2nd Battlegroup peaked cap"
	desc = "A cap worn by officers of the 2nd Battlegroup."
	icon_state = "gorlex_cap"
	item_state = "gorlex_cap"
	flags_inv = 0
	armor = list("melee" = 25, "bullet" = 15, "laser" = 25, "energy" = 35, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 60

/obj/item/clothing/head/soft/cybersun
	name = "cybersun agent cap"
	desc = "A black baseball hat emblazoned with a reflective Cybersun patch."
	icon_state = "agentsoft"
	soft_type = "black"
	dog_fashion = null

/obj/item/clothing/head/soft/cybersun/medical
	name = "cybersun medic cap"
	desc = "A turquoise baseball hat emblazoned with a reflective cross. Typical of Cybersun Industries field medics."
	icon_state = "cybersunsoft"
	soft_type = "cybersun"
	dog_fashion = null

/obj/item/clothing/head/helmet/syndicate/infiltrator
	name = "infiltrator helmet"
	desc = "The galaxy isn't big enough for the two of us."
	icon_state = "infiltrator"
	item_state = "infiltrator"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 30, "energy" = 40, "bomb" = 70, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	flash_protect = FLASH_PROTECTION_WELDER
	flags_inv = HIDEHAIR|HIDEFACIALHAIR|HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	strip_delay = 80

/obj/item/clothing/head/helmet/syndicate
	name = "\improper Operator helmet"
	desc = "A robust combat helmet commonly employed by Syndicate forces, regardless of alignment."
	icon_state = "operator"
	item_state = "operator"

/obj/item/clothing/head/helmet/syndicate/medical
	name = "\improper trauma team helmet"
	desc = "A robust combat helmet commonly employed by cybersun medical trauma teams, with its distinctive turquoise."
	icon_state = "traumahelm"
	item_state = "traumahelm"

/obj/item/clothing/head/maidheadband/syndicate
	name = "tactical maid headband"
	desc = "Tacticute."
	icon_state = "syndieheadband"
	item_state = "syndieheadband"

// gloves

/obj/item/clothing/gloves/combat/maid
	name = "combat maid sleeves"
	desc = "These 'tactical' gloves and sleeves are fireproof and electrically insulated. Warm to boot."
	icon_state = "syndimaid_arms"
	item_state = "syndimaid_arms"

/obj/item/clothing/gloves/color/latex/nitrile/evil
	name = "red nitrile gloves"
	desc = "Thick sterile gloves that reach up to the elbows, in exactly the same color as fresh blood. Transfers combat medic knowledge into the user via nanochips."
	icon_state = "nitrile_evil"
	item_state = "nitrile_evil"

/obj/item/clothing/gloves/color/latex/nitrile/infiltrator
	name = "infiltrator gloves"
	desc = "Specialized combat gloves for carrying people around. Transfers tactical kidnapping knowledge into the user via nanochips."
	icon_state = "infiltrator"
	item_state = "infiltrator"
	siemens_coefficient = 0
	permeability_coefficient = 0.3
	resistance_flags = FIRE_PROOF | ACID_PROOF

// shoes

/obj/item/clothing/shoes/combat/sneakboots
	name = "sneakboots"
	desc = "These boots have special noise cancelling soles. Perfect for stealth, if it wasn't for the color scheme."
	icon_state = "sneakboots"
	item_state = "sneakboots"
	w_class = WEIGHT_CLASS_SMALL
	resistance_flags = FIRE_PROOF |  ACID_PROOF

/obj/item/clothing/shoes/combat/sneakboots/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	if(slot == ITEM_SLOT_FEET)
		ADD_TRAIT(user, TRAIT_SILENT_FOOTSTEPS, SHOES_TRAIT)

/obj/item/clothing/shoes/combat/sneakboots/dropped(mob/living/carbon/human/user)
	REMOVE_TRAIT(user, TRAIT_SILENT_FOOTSTEPS, SHOES_TRAIT)
	return ..()

/obj/item/clothing/shoes/magboots/syndie
	desc = "Reverse-engineered magnetic boots that have a heavy magnetic pull. Property of Gorlex Marauders."
	name = "blood-red magboots"
	icon_state = "syndiemag0"
	magboot_state = "syndiemag"

// headset
/obj/item/radio/headset/syndicate
	name = "syndicate headset"
	desc = "A headset worn by members of the various Syndicate splinters on the frontier."
	icon_state = "syndie_headset"
	item_state = "syndie_headset"
	keyslot = new /obj/item/encryptionkey/syndicate

/obj/item/radio/headset/syndicate/captain
	name = "syndicate leader headset"
	desc = "A headset worn by officers of the various Syndicate splinters on the frontier."
	command = TRUE
	keyslot2 = new /obj/item/encryptionkey/heads/captain

/obj/item/radio/headset/syndicate/alt
	name = "syndicate bowman headset"
	desc = "A headset worn by members of the various Syndicate splinters on the frontier. Protects ears from flashbangs."
	icon_state = "syndie_headset_alt"
	item_state = "syndie_headset_alt"

/obj/item/radio/headset/syndicate/alt/captain
	name = "syndicate leader bowman headset"
	desc = "A headset worn by officers of the various Syndicate splinters on the frontier. Protects ears from flashbangs."
	command = TRUE
	keyslot2 = new /obj/item/encryptionkey/heads/captain

/obj/item/radio/headset/syndicate/alt/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))

/obj/item/radio/headset/syndicate/alt/leader
	name = "team leader headset"
	command = TRUE
