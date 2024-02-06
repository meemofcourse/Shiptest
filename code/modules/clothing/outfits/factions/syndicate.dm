//top outfit of everything syndicate. Don't change this.

/datum/outfit/job/syndicate
	name = "Syndicate - Base Outfit"

	uniform = /obj/item/clothing/under/color/black
	box = /obj/item/storage/box/survival/syndie
	id = /obj/item/card/id/syndicate_command/crew_id

	faction_icon = "bg_syndicate"

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

/datum/outfit/job/syndicate/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SYNDICATE)

//generates a codename and assigns syndicate access, used in the twinkleshine.
/datum/outfit/job/syndicate/proc/assign_codename(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.twinkle_names) + "-" + num2text(rand(1, 12)) // squidquest real
	I.access |= list(ACCESS_SYNDICATE)
	I.update_label()

//and now, for the Assistants

/datum/outfit/job/syndicate/assistant
	name = "Syndicate - Junior Agent"
	jobtype = /datum/job/assistant
	job_icon = "assistant"

	uniform = /obj/item/clothing/under/syndicate/intern
	alt_uniform = null

	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	back = /obj/item/storage/backpack

	id = /obj/item/card/id/syndicate_command/crew_id
	r_pocket = /obj/item/radio

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/assistant/gorlex
	name = "Syndicate - Junior Agent (Gorlex Marauders)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	alt_uniform = /obj/item/clothing/under/syndicate

/datum/outfit/job/syndicate/assistant/gec
	name = "Syndicate - Deckhand (GEC)"

	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/toggle/hazard

	head = /obj/item/clothing/head/safety_helmet

/datum/outfit/job/syndicate/assistant/cybersun
	name = "Syndicate - Junior Agent (Cybersun)"

	uniform = /obj/item/clothing/under/syndicate/cybersun
	shoes = /obj/item/clothing/shoes/jackboots
	r_pocket = /obj/item/radio
	head = /obj/item/clothing/head/soft/cybersun

/datum/outfit/job/syndicate/assistant/twink
	name = "Syndicate - Deck Assistant (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	id = /obj/item/card/id/syndicate_command/crew_id
	belt = null
	shoes = /obj/item/clothing/shoes/combat
	gloves = null
	ears = null
	implants = list(/obj/item/implant/weapons_auth)


	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/assistant/twink/post_equip(mob/living/carbon/human/H)
	. = ..()

	assign_codename(H)

/datum/outfit/job/syndicate/assistant/suns
	name = "Syndicate - Freshman (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns
	alt_uniform = /obj/item/clothing/under/syndicate/suns/alt
	suit = /obj/item/clothing/suit/toggle/suns/alt
	alt_suit = /obj/item/clothing/suit/toggle/suns
	shoes = /obj/item/clothing/shoes/laceup/suns
	gloves = null
	ears = null
	box = /obj/item/storage/box/survival

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

/datum/outfit/job/syndicate/assistant/suns/halfway
	name = "Syndicate - Junior (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/uniform2
	alt_uniform = /obj/item/clothing/under/syndicate/suns/uniform2/alt

/datum/outfit/job/syndicate/assistant/suns/complete
	name = "Syndicate - Graduate (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/uniform3
	alt_uniform = /obj/item/clothing/under/syndicate/suns/uniform3

//atmos techs

/datum/outfit/job/syndicate/atmos
	name = "Syndicate - Atmospheric Technician"
	jobtype = /datum/job/atmos
	job_icon = "atmospherictechnician"

	belt = /obj/item/storage/belt/utility/atmostech

	uniform = /obj/item/clothing/under/rank/engineering/atmospheric_technician
	alt_uniform = /obj/item/clothing/under/rank/engineering/engineer/hazard
	alt_suit = /obj/item/clothing/suit/hazardvest
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/engineering

	r_pocket = /obj/item/analyzer

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	courierbag = /obj/item/storage/backpack/messenger/engi

	box = /obj/item/storage/box/survival/engineer

	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1)

/datum/outfit/job/syndicate/atmos/gec
	name = "Syndicate - Atmospheric Technician (GEC)"

	uniform = /obj/item/clothing/under/syndicate/gec/atmos_tech
	suit = /obj/item/clothing/suit/toggle/hazard
	head = /obj/item/clothing/head/hardhat
	id = /obj/item/card/id/syndicate_command/crew_id


//bartenders

/datum/outfit/job/syndicate/bartender
	name = "Syndicate - Bartender"
	jobtype = /datum/job/bartender
	job_icon = "bartender"

	id = /obj/item/card/id/syndicate_command/crew_id
	head = /obj/item/clothing/head/HoS/beret/syndicate
	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	uniform = /obj/item/clothing/under/rank/civilian/bartender
	alt_uniform = /obj/item/clothing/under/rank/civilian/bartender/purple
	alt_suit = /obj/item/clothing/suit/apron/purple_bartender
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(/obj/item/storage/box/beanbag=1)
	shoes = /obj/item/clothing/shoes/laceup

/datum/outfit/job/syndicate/bartender/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()

	var/obj/item/card/id/W = H.wear_id
	if(H.age < AGE_MINOR)
		W.registered_age = AGE_MINOR
		to_chat(H, "<span class='notice'>You're not technically old enough to access or serve alcohol, but your ID has been discreetly modified to display your age as [AGE_MINOR]. Try to keep that a secret!</span>")

/datum/outfit/job/syndicate/bartender/twink
	name = "Syndicate - Bartender (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/donk
	id = /obj/item/card/id/syndicate_command/crew_id
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	suit = null
	belt = null
	head = null
	shoes = /obj/item/clothing/shoes/laceup
	gloves = null
	ears = null


	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/bartender/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

//botanist
/datum/outfit/job/syndicate/botanist
	name = "Syndicate - Botanist"
	jobtype = /datum/job/hydro
	job_icon = "botanist"

	suit = /obj/item/clothing/suit/apron
	alt_suit = /obj/item/clothing/suit/apron/overalls
	gloves  =/obj/item/clothing/gloves/botanic_leather
	suit_store = /obj/item/plant_analyzer

/datum/outfit/job/syndicate/botanist/suns
	name = "Syndicate - Botanist-Chemist (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/sciencejumpsuit
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/sneakers/suns
	glasses = /obj/item/clothing/glasses/science/suns
	suit =  /obj/item/clothing/suit/hooded/suns
	suit_store = null
	neck = /obj/item/clothing/neck/cloak/suns

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

//Captain

/datum/outfit/job/syndicate/captain
	name = "Syndicate - Captain"
	jobtype = /datum/job/captain
	job_icon = "captain"

	id = /obj/item/card/id/syndicate_command/captain_id
	ears = /obj/item/radio/headset/syndicate/alt/captain
	uniform = /obj/item/clothing/under/syndicate/officer
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/HoS/syndicate
	gloves = /obj/item/clothing/gloves/combat
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/captain/aclf
	name = "Captain (ACLF)"


/datum/outfit/job/syndicate/captain/twink
	name = "Flotilla Admiral (Twinkleshine, ACLF)"

	uniform = /obj/item/clothing/under/syndicate/officer
	head = null
	gloves = /obj/item/clothing/gloves/color/white
	shoes = /obj/item/clothing/shoes/combat
	ears = /obj/item/radio/headset/syndicate/alt/captain
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	suit = null
	belt = null
	backpack_contents = null
	implants = list(/obj/item/implant/weapons_auth)


/datum/outfit/job/syndicate/captain/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)


/datum/outfit/job/syndicate/captain/gorlex
	name = "Syndicate - Captain (Gorlex Marauders)"
	uniform = /obj/item/clothing/under/syndicate/officer

	head = /obj/item/clothing/head/gorlexcap
	suit = /obj/item/clothing/suit/gorlex

/datum/outfit/job/syndicate/captain/cybersun
	name = "Syndicate - Captain (Cybersun)"

	uniform = /obj/item/clothing/under/syndicate/cybersun/officer
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/cybersun
	head = /obj/item/clothing/head/HoS/cybersun
	gloves = /obj/item/clothing/gloves/combat

/datum/outfit/job/syndicate/captain/suns
	name = "Syndicate - Captain (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/captain
	shoes = /obj/item/clothing/shoes/combat/suns
	head = /obj/item/clothing/head/suns/captain
	gloves = /obj/item/clothing/gloves/suns/captain
	suit = /obj/item/clothing/suit/armor/vest/bulletproof/suns/captain
	mask = /obj/item/clothing/mask/breath/suns
	neck = /obj/item/clothing/neck/cloak/suns/cap

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

//cargo tech

/datum/outfit/job/syndicate/cargo_tech
	name = "Syndicate - Cargo Tech"
	jobtype = /datum/job/cargo_tech
	job_icon = "cargotechnician"

	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/syndicate/donk
	suit = /obj/item/clothing/suit/hazardvest/donk

	alt_suit = /obj/item/clothing/suit/hazardvest
	l_hand = /obj/item/export_scanner
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/cargo=1)


/datum/outfit/job/syndicate/cargo_tech/donk
	name = "Syndicate - Customer Associate (Donk)"

//chemist

/datum/outfit/job/syndicate/chemist
	name = "Syndicate - Chemist"
	jobtype = /datum/job/chemist
	job_icon = "chemist"

	uniform = /obj/item/clothing/under/syndicate
	id = /obj/item/card/id/syndicate_command/crew_id

	glasses = /obj/item/clothing/glasses/science
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit =  /obj/item/clothing/suit/toggle/labcoat/chemist

	box = /obj/item/storage/box/survival/medical

/datum/outfit/job/syndicate/chemist/gec
	name = "Syndicate - Chemist (GEC)"

	uniform = /obj/item/clothing/under/syndicate/intern
	suit = /obj/item/clothing/suit/toggle/hazard
	head = /obj/item/clothing/head/hardhat
	belt = /obj/item/storage/belt/utility/full/engi
	id = /obj/item/card/id/syndicate_command/crew_id

//Chief Engineer

/datum/outfit/job/syndicate/ce
	name = "Syndicate - Chief Engineer"
	jobtype = /datum/job/chief_engineer
	job_icon = "chiefengineer"

	id = /obj/item/card/id/syndicate_command/crew_id
	ears = /obj/item/radio/headset/syndicate/alt
	glasses = /obj/item/clothing/glasses/sunglasses

	belt = /obj/item/storage/belt/utility/chief/full
	uniform = /obj/item/clothing/under/rank/engineering/chief_engineer
	shoes = /obj/item/clothing/shoes/sneakers/brown
	head = /obj/item/clothing/head/hardhat/white
	gloves = /obj/item/clothing/gloves/color/black
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced=1)

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	courierbag = /obj/item/storage/backpack/messenger/engi
	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	chameleon_extras = /obj/item/stamp/ce


/datum/outfit/job/syndicate/ce/gec
	name = "Syndicate - Chief Engineer (GEC)"

	uniform = /obj/item/clothing/under/syndicate/gec/chief_engineer
	suit = /obj/item/clothing/suit/toggle/hazard
	head = /obj/item/clothing/head/hardhat/white
	shoes =/obj/item/clothing/shoes/laceup
	ears = /obj/item/radio/headset/syndicate/alt/captain
	id = /obj/item/card/id/syndicate_command/captain_id
	gloves = /obj/item/clothing/gloves/combat

/datum/outfit/job/syndicate/ce/gorlex
	name = "Syndicate - Foreman (Gorlex Marauders)"

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/gorlex
	alt_uniform = null
	suit = /obj/item/clothing/suit/toggle/hazard
	alt_suit = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/combat

//Chief Medical Officer

/datum/outfit/job/syndicate/cmo
	name = "Syndicate - Medical Director (Cybersun)"
	jobtype = /datum/job/cmo
	job_icon = "chiefmedicalofficer"

	uniform = /obj/item/clothing/under/rank/medical/chief_medical_officer/cybersun
	ears = /obj/item/radio/headset/syndicate/alt/captain
	id = /obj/item/card/id/syndicate_command/captain_id
	shoes = /obj/item/clothing/shoes/jackboots
	l_pocket = /obj/item/pinpointer/crew
	head = /obj/item/clothing/head/beret/cmo/cybersun
	suit = /obj/item/clothing/suit/toggle/labcoat/raincoat
	l_hand = /obj/item/storage/firstaid/medical
	suit_store = /obj/item/flashlight/pen
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1)

/datum/outfit/job/syndicate/cmo/suns
	name = "Syndicate - Medical Instructor (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/doctorscrubs
	ears = /obj/item/radio/headset/syndicate/alt/captain
	id = /obj/item/card/id/syndicate_command/captain_id
	shoes = /obj/item/clothing/shoes/combat/suns
	l_pocket = /obj/item/pinpointer/crew
	suit = /obj/item/clothing/suit/toggle/labcoat/suns/cmo
	l_hand = /obj/item/storage/firstaid/medical
	suit_store = /obj/item/flashlight/pen
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1)
	gloves = /obj/item/clothing/gloves/color/latex/nitrile/suns
	glasses = /obj/item/clothing/glasses/hud/health/suns
	head = /obj/item/clothing/head/suns/cmo

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

//"Head Of Personnel"

/datum/outfit/job/syndicate/head_of_personnel
	name = "Syndicate - Bridge Officer"
	jobtype = /datum/job/head_of_personnel
	job_icon = "headofpersonnel"

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/aclfgrunt
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/HoS/beret/syndicate
	gloves = /obj/item/clothing/gloves/color/white
	id = /obj/item/card/id/syndicate_command/crew_id
	r_pocket = /obj/item/kitchen/knife/combat/survival
	glasses = /obj/item/clothing/glasses/hud/health
	backpack_contents = list(/obj/item/storage/box/ids=1,\
		/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced = 1)

/datum/outfit/job/syndicate/head_of_personnel/cybersun
	name = "Syndicate - Intelligence Officer (Cybersun)"

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/cybersun/officer
	suit = /obj/item/clothing/suit/cybersun_suit
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/HoS/cybersun
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/syndicate_command/crew_id
	r_pocket = /obj/item/kitchen/knife/combat/survival
	glasses = /obj/item/clothing/glasses/sunglasses

/datum/outfit/job/syndicate/head_of_personnel/suns
	name = "Syndicate - Academic Staff (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/xo
	suit = /obj/item/clothing/suit/armor/vest/bulletproof/suns/xo
	shoes = /obj/item/clothing/shoes/combat/suns
	head = /obj/item/clothing/head/suns
	gloves = /obj/item/clothing/gloves/suns/xo
	neck = /obj/item/clothing/neck/cloak/suns/xo
	r_pocket = null
	glasses = /obj/item/clothing/glasses/science/suns

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

//head of security

/datum/outfit/job/syndicate/hos
	name = "Syndicate - Head Of Security"
	jobtype = /datum/job/hos
	job_icon = "headofsecurity"

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/combat
	head = /obj/item/clothing/head/HoS/syndicate
	suit = /obj/item/clothing/suit/armor/vest/syndie
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/jackboots
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	suit_store = /obj/item/gun/energy/e_gun
	r_pocket = /obj/item/assembly/flash/handheld
	l_pocket = /obj/item/restraints/handcuffs
	backpack_contents = list(/obj/item/melee/baton/loaded=1)

/datum/outfit/job/syndicate/hos/gorlex
	name = "Syndicate - Sergeant (Gorlex)"

/datum/outfit/job/syndicate/hos/twink
	name = "Syndicate - Lieutenant (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/aclfgrunt
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	id = /obj/item/card/id/syndicate_command/lieutenant
	head = null
	ears = null
	gloves = /obj/item/clothing/gloves/combat
	l_pocket = null
	r_pocket = null
	belt = null
	shoes = /obj/item/clothing/shoes/combat
	suit = null
	suit_store = null
	alt_suit = null
	implants = list(/obj/item/implant/weapons_auth)

	backpack_contents = null

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/hos/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

/datum/outfit/job/syndicate/hos/suns/
	name = "Syndicate - Senior Peacekeeper (SUNS)"
	uniform = /obj/item/clothing/under/syndicate/suns/pkuniform
	suit = /obj/item/clothing/suit/armor/vest/bulletproof/suns/hos
	gloves = /obj/item/clothing/gloves/tackler/dolphin/suns
	shoes = /obj/item/clothing/shoes/combat/suns
	head = /obj/item/clothing/head/welding/suns/hos
	glasses = /obj/item/clothing/glasses/hud/security/suns
	suit_store = /obj/item/gun/ballistic/automatic/powered/gauss/modelh

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

/datum/outfit/job/syndicate/hos/suns/alt
	name = "Syndicate - Senior Peacekeeper Alt (SUNS)"
	suit = /obj/item/clothing/suit/armor/vest/bulletproof/suns/ehos
	head = /obj/item/clothing/head/HoS/syndicate/suns

//medical doctors (assorted)

/datum/outfit/job/syndicate/doctor
	name = "Syndicate - Medical Doctor"
	jobtype = /datum/job/doctor
	job_icon = "medicaldoctor"

	uniform = /obj/item/clothing/under/syndicate
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/jackboots
	shoes = /obj/item/clothing/shoes/sneakers/white
	alt_suit = /obj/item/clothing/suit/apron/surgical
	l_hand = /obj/item/storage/firstaid/medical

/datum/outfit/job/syndicate/doctor/suns
	name = "Syndicate - Medical Doctor (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/doctorscrubs
	shoes = /obj/item/clothing/shoes/sneakers/suns
	suit = /obj/item/clothing/suit/toggle/labcoat/suns/doctorlabcoat
	gloves = /obj/item/clothing/gloves/color/latex/nitrile/suns
	head = /obj/item/clothing/head/suns/surgery
	glasses = /obj/item/clothing/glasses/hud/health/suns
	mask = /obj/item/clothing/mask/surgical/suns

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

/datum/outfit/job/syndicate/doctor/cybersun
	name = "Syndicate - Medical Doctor (Cybersun)"

	uniform = /obj/item/clothing/under/syndicate/medic
	accessory = /obj/item/clothing/accessory/armband/medblue
	shoes = /obj/item/clothing/shoes/jackboots

/datum/outfit/job/syndicate/doctor/gorlex
	name = "Syndicate - Medical Doctor (Gorlex)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	glasses = /obj/item/clothing/glasses/hud/health/prescription
	r_pocket = /obj/item/kitchen/knife/combat/survival
	back = /obj/item/storage/backpack/duffelbag/syndie/med
	id = /obj/item/card/id/syndicate_command/crew_id
	backpack_contents = list(/obj/item/storage/box/survival/syndie=1, /obj/item/storage/firstaid/medical,)

//paramedics


/datum/outfit/job/syndicate/paramedic
	name = "Syndicate - Paramedic"
	jobtype = /datum/job/paramedic
	job_icon = "paramedic"

	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/syndicate/gorlex
	alt_uniform = null
	shoes = /obj/item/clothing/shoes/jackboots

	head = /obj/item/clothing/head/soft/paramedic
	suit =  /obj/item/clothing/suit/toggle/labcoat/paramedic
	alt_suit = /obj/item/clothing/suit/apron/surgical
	gloves = /obj/item/clothing/gloves/color/latex/nitrile/evil
	belt = /obj/item/storage/belt/medical/paramedic
	id = /obj/item/card/id
	suit_store = /obj/item/flashlight/pen
	backpack_contents = list(/obj/item/roller=1)
	pda_slot = ITEM_SLOT_LPOCKET

/datum/outfit/job/syndicate/paramedic/gorlex
	name = "Syndicate - Paramedic (Gorlex)"

/datum/outfit/job/syndicate/paramedic/cybersun
	name = "Syndicate - Field Medic (Cybersun Industries)"

	uniform = /obj/item/clothing/under/syndicate/medic
	head = /obj/item/clothing/head/soft/cybersun/medical
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/toggle/labcoat/raincoat

/datum/outfit/job/syndicate/paramedic/twink
	name = "Syndicate - Medic (Twinkleshine)"

	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	uniform = /obj/item/clothing/under/rank/medical/doctor/red
	id = /obj/item/card/id/syndicate_command/crew_id/med
	belt = null
	head = null
	gloves = /obj/item/clothing/gloves/color/latex/nitrile/evil
	shoes = /obj/item/clothing/shoes/combat
	suit = null
	alt_suit = null
	suit_store =  null
	ears = null
	l_pocket = null
	r_pocket = null
	implants = list(/obj/item/implant/weapons_auth)

	backpack_contents = null

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie/med
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/paramedic/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

//psychologist

/datum/outfit/job/syndicate/psychologist
	name = "Syndicate - Psychologist"
	jobtype = /datum/job/psychologist
	job_icon = "psychologist"

	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/rank/medical/psychiatrist
	suit = /obj/item/clothing/suit/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	alt_uniform = null
	l_hand = /obj/item/clipboard
	pda_slot = ITEM_SLOT_BELT

/datum/outfit/job/syndicate/psychologist/suns
	name = "Syndicate - Psychologist (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/uniform3
	alt_uniform = /obj/item/clothing/under/syndicate/suns/uniform3/alt
	suit = /obj/item/clothing/suit/toggle/suns
	alt_suit = /obj/item/clothing/suit/toggle/suns/alt
	shoes = /obj/item/clothing/shoes/laceup/suns
	accessory = /obj/item/clothing/accessory/waistcoat/suns/poof

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

//patient (prisoner)

/datum/outfit/job/syndicate/patient
	name = "Syndicate - Long Term Patient"
	jobtype = /datum/job/prisoner
	job_icon = "assistant"

	id = /obj/item/card/id/patient
	uniform = /obj/item/clothing/under/rank/medical/gown
	alt_suit = null
	shoes = /obj/item/clothing/shoes/sandal/slippers

//Quartermaster

/datum/outfit/job/syndicate/quartermaster
	name = "Syndicate - Quartermaster"
	jobtype = /datum/job/qm
	job_icon = "quartermaster"

	id = /obj/item/card/id/syndicate_command/captain_id

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/donk/qm
	suit = /obj/item/clothing/suit/hazardvest/donk/qm
	ears = /obj/item/radio/headset/syndicate/alt
	shoes = /obj/item/clothing/shoes/laceup
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/clipboard
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/cargo=1)

/datum/outfit/job/syndicate/quartermaster/donk
	name = "Syndicate - Manager (Donk)"
	id = /obj/item/card/id/syndicate_command/captain_id

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/donk/qm
	suit = /obj/item/clothing/suit/hazardvest/donk/qm
	ears = /obj/item/radio/headset/syndicate/alt
	shoes = /obj/item/clothing/shoes/laceup

//scientists

/datum/outfit/job/syndicate/science
	name = "Syndicate - Scientist"
	jobtype = /datum/job/scientist
	job_icon = "scientist"

	suit = /obj/item/clothing/suit/toggle/labcoat/science
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/science

/datum/outfit/job/syndicate/science/suns
	name = "Syndicate - Scientist (SUNS)"
//more futureproofing than anything, the Aegis currently uses /datum/outfit/job/syndicate/botanist/suns for a similar role
	uniform = /obj/item/clothing/under/syndicate/suns/sciencejumpsuit
	suit = /obj/item/clothing/suit/hooded/suns
	shoes = /obj/item/clothing/shoes/sneakers/suns
	glasses = /obj/item/clothing/glasses/science/suns
	neck = /obj/item/clothing/neck/cloak/suns

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

//security officers

/datum/outfit/job/syndicate/security
	name = "Syndicate - Operative"
	jobtype = /datum/job/officer
	job_icon = "securityofficer"

	uniform = /obj/item/clothing/under/syndicate
	r_pocket = /obj/item/kitchen/knife/combat/survival
	belt = /obj/item/storage/belt/military
	back = /obj/item/storage/backpack
	suit = /obj/item/clothing/suit/armor/vest
	id = /obj/item/card/id/syndicate_command/crew_id

	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/helmet/sec
	shoes = /obj/item/clothing/shoes/jackboots
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

	backpack_contents = list(
		/obj/item/melee/baton/loaded=1,
	)


/datum/outfit/job/syndicate/security/gorlex
	name = "Syndicate - Assault Operative (Gorlex)"

/datum/outfit/job/syndicate/security/twink
	name = "Syndicate - Operative (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/combat
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	id = /obj/item/card/id/syndicate_command/crew_id
	head = null
	ears = null
	suit = null
	belt = null
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/combat
	l_pocket = null
	r_pocket = null
	implants = list(/obj/item/implant/weapons_auth)

	backpack_contents = null

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/security/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

/datum/outfit/job/syndicate/security/suns
	name = "Syndicate - Peacekeeper (SUNS)"
	uniform = /obj/item/clothing/under/syndicate/suns/pkuniform
	suit = /obj/item/clothing/suit/armor/vest/bulletproof/suns
	alt_suit = /obj/item/clothing/suit/toggle/suns/pkcoat
	belt = null
	gloves = /obj/item/clothing/gloves/tackler/dolphin/suns
	shoes = /obj/item/clothing/shoes/jackboots/suns/long
	head = /obj/item/clothing/head/welding/suns
	glasses = /obj/item/clothing/glasses/hud/security/suns

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger

//Miners

/datum/outfit/job/syndicate/miner
	name = "Syndicate - Miner"
	jobtype = /datum/job/mining
	job_icon = "shaftminer"

	ears = /obj/item/radio/headset/headset_cargo/mining
	shoes = /obj/item/clothing/shoes/workboots/mining
	gloves = /obj/item/clothing/gloves/explorer
	uniform = /obj/item/clothing/under/rank/cargo/miner/lavaland
	l_pocket = /obj/item/reagent_containers/hypospray/medipen/survival
	r_pocket = /obj/item/storage/bag/ore
	backpack_contents = list(
		/obj/item/flashlight/seclite=1,\
		/obj/item/kitchen/knife/combat/survival=1,\
		/obj/item/mining_voucher=1,\
		/obj/item/stack/marker_beacon/ten=1)

/datum/outfit/job/syndicate/miner/gorlex
	name = "Syndicate - Wrecker (Gorlex Marauders)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	shoes = /obj/item/clothing/shoes/workboots
	ears = /obj/item/radio/headset/alt

/datum/outfit/job/syndicate/miner/twink
	name = "Syndicate - Miner (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/coldres
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/workboots
	glasses = null
	gloves = null
	ears = null
	r_pocket = null
	l_pocket = null
	belt = null
	implants = list(/obj/item/implant/weapons_auth)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/mining

/datum/outfit/job/syndicate/miner/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

/datum/outfit/job/syndicate/miner/cybersun
	name = "Syndicate - Field Agent (Cybersun)"

	id = /obj/item/card/id/syndicate_command/crew_id
	ears = /obj/item/radio/headset
	uniform = /obj/item/clothing/under/syndicate/cybersun
	accessory = /obj/item/clothing/accessory/armband/cargo
	head = /obj/item/clothing/head/soft/cybersun
	r_pocket = /obj/item/radio

/datum/outfit/job/syndicate/miner/gec
	name = "Syndicate - Shaft Miner (GEC)"

	id = /obj/item/card/id/syndicate_command/crew_id
	ears = /obj/item/radio/headset
	uniform = /obj/item/clothing/under/syndicate
	alt_uniform = null
	accessory = /obj/item/clothing/accessory/armband/cargo
	head = /obj/item/clothing/head/soft/black
	r_pocket = /obj/item/radio
	head = /obj/item/clothing/head/hardhat/orange
	suit = /obj/item/clothing/suit/toggle/industrial
	suit_store = /obj/item/tank/internals/emergency_oxygen/double

//"station" engineers

/datum/outfit/job/syndicate/engineer
	name = "Syndicate - Ship Technician"
	jobtype = /datum/job/engineer
	job_icon = "stationengineer"

	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/syndicate/aclfgrunt
	accessory = /obj/item/clothing/accessory/armband/engine
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/jackboots

	belt = /obj/item/storage/belt/utility/full/engi
	head = /obj/item/clothing/head/hardhat/dblue
	r_pocket = /obj/item/t_scanner

	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1)

/datum/outfit/job/syndicate/engineer/gec
	name = "Syndicate - Ship Engineer (GEC)"

	uniform = /obj/item/clothing/under/syndicate/gec
	suit = /obj/item/clothing/suit/toggle/hazard
	head = /obj/item/clothing/head/hardhat
	id = /obj/item/card/id/syndicate_command/crew_id

/datum/outfit/job/syndicate/engineer/gorlex
	name = "Syndicate - Mechanic (Gorlex Marauders)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	shoes = /obj/item/clothing/shoes/workboots
	alt_uniform = null
	glasses = null

/datum/outfit/job/syndicate/engineer/twink
	name = "Syndicate - Ship Engineer (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/gec
	id = /obj/item/card/id/syndicate_command/crew_id/engi
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	ears = null
	accessory = null
	glasses = null
	head = null
	gloves = /obj/item/clothing/gloves/tackler/combat
	belt = null
	shoes = /obj/item/clothing/shoes/combat
	suit = null
	alt_suit = null
	l_pocket = null
	r_pocket = null
	implants = list(/obj/item/implant/weapons_auth)

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/engineer/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

/datum/outfit/job/syndicate/engineer/cybersun
	name = "Syndicate - Engineer (Cybersun)"

	uniform = /obj/item/clothing/under/syndicate/cybersun/research
	shoes = /obj/item/clothing/shoes/workboots
	r_pocket = /obj/item/radio
	head = /obj/item/clothing/head/soft/cybersun
	accessory = /obj/item/clothing/accessory/armband/engine

/datum/outfit/job/syndicate/engineer/suns
	name = "Syndicate - Ship Engineer (SUNS)"

	uniform = /obj/item/clothing/under/syndicate/suns/workerjumpsuit
	suit = /obj/item/clothing/suit/toggle/suns/workervest
	gloves = /obj/item/clothing/gloves/suns/yellow
	shoes = /obj/item/clothing/shoes/jackboots/suns
	head = /obj/item/clothing/head/safety_helmet/suns
	accessory = null
	glasses = null

	backpack = /obj/item/storage/backpack
	satchel  = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger
