--[[-------------------------------------------------------------------------
DarkRP custom entities
-----------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]

-- Copyright © LiveYourGame, 2020

-- Businessman

DarkRP.createEntity("Worker", {
	ent = "sb_wk_seat",
	model = "models/player/group01/male_04.mdl",
	price = 2500,
	max = 2,
	cmd = "buy_sb_worker",
	allowed = TEAM_BUSINESSMAN
})

DarkRP.createEntity("Workplace", {
	ent = "sb_wk_place",
	model = "models/props_wasteland/controlroom_desk001b.mdl",
	price = 5000,
	max = 2,
	cmd = "buy_sb_workplace",
	allowed = TEAM_BUSINESSMAN
})

DarkRP.createEntity("Crime Box", {
	ent = "sb_crime_box",
	model = "models/props_junk/cardboard_box003a.mdl",
	price = 1000,
	max = 1,
	cmd = "buy_sb_crime_box",
	allowed = TEAM_BUSINESSMAN
})

DarkRP.createEntity("Good Box", {
	ent = "sb_good_box",
	model = "models/props_junk/cardboard_box003a.mdl",
	price = 1000,
	max = 1,
	cmd = "buy_sb_good_box",
	allowed = TEAM_BUSINESSMAN
})

DarkRP.createEntity("Crime Guide", {
	ent = "sb_crime_guide",
	model = "models/props_lab/binderredlabel.mdl",
	price = 500,
	max = 1,
	cmd = "buy_sb_crime_guide",
	allowed = TEAM_BUSINESSMAN
})

DarkRP.createEntity("Good Guide", {
	ent = "sb_good_guide",
	model = "models/props_lab/bindergreenlabel.mdl",
	price = 500,
	max = 1,
	cmd = "buy_sb_good_guide",
	allowed = TEAM_BUSINESSMAN
})

-- Meth

DarkRP.createEntity("Combineur", {
	ent = "zmlab_combiner",
	model = "models/zerochain/zmlab/zmlab_combiner.mdl",
	price = 6000,
	max = 1,
	cmd = "buymeth_combiner",
	allowed = TEAM_METH
})

DarkRP.createEntity("Filtre", {
	ent = "zmlab_filter",
	model = "models/zerochain/zmlab/zmlab_filter.mdl",
	price = 1000,
	max = 1,
	cmd = "buymeth_filter",
	allowed = TEAM_METH
})

DarkRP.createEntity("Congélateur", {
	ent = "zmlab_frezzer",
	model = "models/zerochain/zmlab/zmlab_frezzer.mdl",
	price = 2000,
	max = 2,
	cmd = "buymeth_frezzer",
	allowed = TEAM_METH
})

DarkRP.createEntity("Méthylamine", {
	ent = "zmlab_methylamin",
	model = "models/zerochain/zmlab/zmlab_methylamin.mdl",
	price = 1000,
	max = 6,
	cmd = "buymeth_methylamin",
	allowed = TEAM_METH
})

DarkRP.createEntity("Aluminium", {
	ent = "zmlab_aluminium",
	model = "models/zerochain/zmlab/zmlab_aluminiumbox.mdl",
	price = 100,
	max = 6,
	cmd = "buymeth_aluminium",
	allowed = TEAM_METH
})

DarkRP.createEntity("Caisse de transport", {
	ent = "zmlab_collectcrate",
	model = "models/zerochain/zmlab/zmlab_transportcrate.mdl",
	price = 250,
	max = 5,
	cmd = "buymeth_collectcrate",
	allowed = TEAM_METH
})

-- Bicraveur

DarkRP.createEntity("Eau", {
	ent = "durgz_water",
	model = "models/drug_mod/the_bottle_of_water.mdl",
	price = 150,
	max = 5,
	cmd = "eau"
})

DarkRP.createEntity("Bière", {
	ent = "durgz_alcohol",
	model = "models/drug_mod/alcohol_can.mdl",
	price = 250,
	max = 5,
	cmd = "bière",
	allowed = TEAM_BICRAVEUR
})

DarkRP.createEntity("Cigarette", {
	ent = "durgz_cigarette",
	model = "models/boxopencigshib.mdl",
	price = 100,
	max = 5,
	cmd = "cigarette",
	allowed = TEAM_BICRAVEUR
})

DarkRP.createEntity("Champignion", {
	ent = "durgz_mushroom",
	model = "models/ipha/mushroom_small.mdl",
	price = 300,
	max = 5,
	cmd = "champignion",
	allowed = TEAM_BICRAVEUR
})

DarkRP.createEntity("Cannabis", {
	ent = "durgz_weed",
	model = "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl",
	price = 450,
	max = 5,
	cmd = "cannabis",
	allowed = TEAM_BICRAVEUR
})

DarkRP.createEntity("LSD", {
	ent = "durgz_lsd",
	model = "models/smile/smile.mdl",
	price = 750,
	max = 5,
	cmd = "lsd",
	allowed = TEAM_BICRAVEUR
})

DarkRP.createEntity("Méthamphétamine", {
	ent = "durgz_meth",
	model = "models/katharsmodels/contraband/metasync/blue_sky.mdl",
	price = 1500,
	max = 5,
	cmd = "méthamphétamine",
	allowed = TEAM_BICRAVEUR
})

-- Autre

DarkRP.createEntity("Drone", {
	ent = "drone_sentity",
	model = "models/props_junk/cardboard_box003a.mdl",
	price = 50000,
	max = 1,
	cmd = "drone",
	allowed = {
		TEAM_SDR,
		TEAM_OFFICIER,
		TEAM_INGEGIGN,
		TEAM_OSUGIGN,
		TEAM_GIGNGENERAL,
		TEAM_MARECHAL,
		TEAM_GENGEN,
		TEAM_CAMBRIOLEUR
	}
})

DarkRP.createShipment("Sac à bijoux", {
	model = "models/sterling/ajr_backpack.mdl",
	entity = "jewelry_robbery_bag",
	price = 10000,
	amount = 1,
	separate = false,
	allowed = {
		TEAM_CGANGSTER,
		TEAM_GANGSTER,
		TEAM_GANGSTERV,
		TEAM_CCARTEL,
		TEAM_CARTEL,
		TEAM_CARTELV,
		TEAM_CYAKUSA,
		TEAM_YAKUSA,
		TEAM_YAKUSAV,
	}
})