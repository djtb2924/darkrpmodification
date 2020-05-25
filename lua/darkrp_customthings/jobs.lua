--[[-------------------------------------------------------------------------
DarkRP custom jobs
-----------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

-- Copyright © LiveYourGame, 2020

local green = Color(20, 150, 20)
local yellow = Color(241, 196, 15)
local orange = Color(230, 126, 34)
local red = Color(231, 76, 60)
local grey = Color(149, 165, 166)
local black = Color(0, 0, 0)

local blue = Color(0, 0, 145)

--[[-------------------------------------------------------------------------
Gouvernement
---------------------------------------------------------------------------]]

TEAM_MAYOR = DarkRP.createJob("Maire", {
	color = orange,
	model = "models/player/breen.mdl",
	description = [[Vous controllez la ville.]],
	weapons = {},
	command = "maire",
	max = 1,
	salary = 3000,
	admin = 0,
	vote = true,
	mayor = true,
	hasLicense = false,
	candemote = false,
	PlayerDeath = function(ply)
		ply:changeTeam(TEAM_CITIZEN, true)
		DarkRP.notifyAll(0, 4, "Le Maire est décédé !")
	end
})

TEAM_SECRETAIRE = DarkRP.createJob("Secretaire Du Maire", {
	color = green,
	model = "models/fearless/rosa.mdl",
	description = [[Vous aidez le Maire.]],
	weapons = {},
	command = "secretaire",
	max = 1,
	salary = 600,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_GARDE = DarkRP.createJob("Garde Du Maire", {
	color = grey,
	model = "models/fearless/02.mdl",
	description = [[Vous protegez le maire.]],
	weapons = {
		"weaponchecker"
	},
	command = "garde",
	max = 4,
	salary = 800,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(50) end,
	admin = 0,
	hasLicense = true,
	candemote = false
})

TEAM_AVOCAT = DarkRP.createJob("Avocat", {
	color = green,
	model = {
		"models/fearless/mayor1.mdl",
		"models/fearless/mayor2.mdl",
		"models/fearless/dgsuit12.mdl",
		"models/fearless/gsuit18.mdl",
		"models/fearless/gsuit15.mdl"
	},
	description = [[Vous défendez les citoyens.]],
	weapons = {},
	command = "avocat",
	max = 2,
	salary = 10000,
	admin = 0,
	hasLicense = false,
	candemote = false
})

--[[-------------------------------------------------------------------------
Gendarmerie
---------------------------------------------------------------------------]]

TEAM_AGS = DarkRP.createJob("Agent Secret V.I.P", {
	color = black,
	model = {
		"models/player/bond.mdl",
		"models/player/suits/robber_shirt.mdl",
		"models/fearless/mafia02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/male_02.mdl",
		"models/player/bloodz/slow_1.mdl",
		"models/player/cripz/slow_1.mdl",
		"models/fearless/wsuit09.mdl",
		"models/player/suits/male_01_shirt.mdl",
		"models/sd/players/[dbs_brawler_2]-head_brawler_dbs.mdl",
	},
	description = [[Vous infiltrez les gangs pour les arreter.]],
	weapons = {
		"ags_badge",
		"door_ram",
		"keypad_cracker",
		"lockpick",
		"m9k_mp7",
		"m9k_usp",
		"policebadgewallet",
		"stungun",
		"weapon_r_handcuffs",
		"weaponchecker"
	},
	command = "secret",
	max = 2,
	salary = 1000,
	admin = 0,
	hasLicense = true,
	candemote = false,
	chief = true,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(100) end
})

-- Gendarmes

TEAM_GENDARME = DarkRP.createJob("Gendarme", {
	color = blue,
	model = {
		"models/player/darkley/gendarmerie_01.mdl",
		"models/player/darkley/gendarmerie_02.mdl",
		"models/player/darkley/gendarmerie_03.mdl"
	},
	description = [[Vous protegez les citoyens.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weapon_r_handcuffs",
		"speedchecker",
		"stungun",
		"salute",
		"itemstore_checker",
		"fine_list",
		"gen_badge"
	},
	command = "gendarme",
	max = 0,
	salary = 600,
	admin = 0,
	hasLicense = true,
	candemote = false,
	chief = true,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_MGN = DarkRP.createJob("MGN", {
	color = blue,
	model = {
		"models/player/darkley/gend_01.mdl",
		"models/player/darkley/gend_02.mdl",
		"models/player/darkley/gend_03.mdl"
	},
	description = [[(Médecin de la Gendarmerie) Vous protegez les citoyens.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weapon_r_handcuffs",
		"speedchecker",
		"stungun",
		"salute",
		"itemstore_checker",
		"fine_list",
		"gen_badge",
		"weapon_medkit"
	},
	command = "mgn",
	max = 8,
	salary = 600,
	admin = 0,
	hasLicense = true,
	candemote = false,
	chief = true,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_AGN = DarkRP.createJob("AGN", {
	color = blue,
	model = "models/player/rico/gend_polaire.mdl",
	description = [[(Armurier de la Gendarmerie) Vous protegez les citoyens.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weapon_r_handcuffs",
		"speedchecker",
		"stungun",
		"salute",
		"itemstore_checker",
		"fine_list",
		"gen_badge"
	},
	command = "agn",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_SDR = DarkRP.createJob("SDR", {
	color = blue,
	model = "models/player/rico/gend_polaire.mdl",
	description = [[(Sureté des routes) Vous protegez les citoyens.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weapon_r_handcuffs",
		"speedchecker",
		"stungun",
		"salute",
		"itemstore_checker",
		"fine_list",
		"gen_badge",
		"nova_spikestrip_deployer"
	},
	command = "sdr",
	max = 8,
	salary = 300,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_BRI = DarkRP.createJob("BRI", {
	color = blue,
	model = {
		"models/player/rico/gend_polaire.mdl",
		"models/darkley/motard_01.mdl",
		"models/darkley/motard_03.mdl"
	},
	description = [[(Brigade Rapide d'intervention) Vous protegez les citoyens.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"fine_list",
		"gen_badge",
		"nova_spikestrip_deployer"
	},
	command = "bri",
	max = 8,
	salary = 300,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_OFFICIER = DarkRP.createJob("Officier", {
	color = blue,
	model = "models/player/portal/russian_police2_armor.mdl",
	description = [[Vous protegez les citoyens.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"arrest_stick",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"nova_spikestrip_deployer",
		"weapon_medkit"
	},
	command = "officier",
	max = 3,
	salary = 300,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(200) end
})

TEAM_GENGEN = DarkRP.createJob("Général", {
	color = blue,
	model = {
		"models/player/pmc_5/pmc__01.mdl",
		"models/player/pmc_6/pmc__01.mdl"
	},
	description = [[Vous protegez les citoyens.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"arrest_stick",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"nova_spikestrip_deployer",
		"weapon_medkit"
	},
	command = "gengen",
	max = 2,
	salary = 300,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(250) end
})

-- Maréchal

TEAM_MARECHAL = DarkRP.createJob("Maréchal", {
	color = blue,
	model = "models/player/massillia/prefect_01.mdl",
	description = [[Vous protegez les citoyens.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"arrest_stick",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"nova_spikestrip_deployer",
		"weapon_medkit",
		"realistic_hook",
		"m9k_m24"
	},
	command = "marechal",
	max = 1,
	salary = 300,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(250) end
})

-- GIGN

TEAM_RECRUEGIGN = DarkRP.createJob("Recrue GIGN", {
	color = blue,
	model = "models/Dauge/BF3_GIGN.mdl",
	description = [[Vous êtes une recrue ou un stagiaire vous devez écouter vos supérieur pour progrésser dans l'unité.]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"realistic_hook"
	},
	command = "recruegign",
	max = 10,
	salary = 10000,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(250) end
})

TEAM_MEDICGIGN = DarkRP.createJob("Médecin GIGN", {
	color = blue,
	model = {
		"models/player/pmc_4/pmc__13.mdl",
		"models/player/pmc_4/pmc__14.mdl",
		"models/player/pmc_5/pmc__13.mdl",
		"models/player/pmc_5/pmc__14.mdl"
	},
	description = [[Vous êtes le médecin de l'unité vous rester en retrait pour soigner vos collègues. Vous êtes sous les ordres des Sous-Officiers et Officiers]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"realistic_hook",
		"defibrillator",
		"weapon_medkit"
	},
	command = "medicgign",
	max = 8,
	salary = 10000,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(250) end
})

TEAM_SOLDATGIGN = DarkRP.createJob("Soldat GIGN", {
	color = blue,
	model = {
		"models/player/pmc_4/pmc__13.mdl",
		"models/player/pmc_4/pmc__14.mdl",
		"models/player/pmc_5/pmc__13.mdl",
		"models/player/pmc_5/pmc__14.mdl"
	},
	description = [[Vous êtes le soldat de l'unité. Vous êtes sous les ordres des Sous-Officiers et Officiers]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"realistic_hook",
		"heavy_shield",
		"m9k_jackhammer"
	},
	command = "soldatgign",
	max = 8,
	salary = 10000,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(250) end
})

TEAM_SNIPERGIGN = DarkRP.createJob("Sniper GIGN", {
	color = blue,
	model = {
		"models/player/pmc_4/pmc__03.mdl",
		"models/player/pmc_5/pmc__03.mdl"
	},
	description = [[Vous êtes le sniper de l'unité. Vous êtes sous les ordres des Sous-Officiers et Officiers]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"realistic_hook",
		"m9k_m24"
	},
	command = "snipergign",
	max = 2,
	salary = 10000,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(250) end
})

TEAM_INGEGIGN = DarkRP.createJob("Ingénieur GIGN", {
	color = blue,
	model = {
		"models/player/pmc_4/pmc__05.mdl",
		"models/player/pmc_4/pmc__06.mdl",
		"models/player/pmc_5/pmc__05.mdl",
		"models/player/pmc_5/pmc__06.mdl"
	},
	description = [[Vous êtes le sniper de l'unité. Vous êtes sous les ordres des Sous-Officiers et Officiers]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"realistic_hook",
		"nova_mechanic"
	},
	command = "ingegign",
	max = 8,
	salary = 10000,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(250) end
})

TEAM_OSUGIGN = DarkRP.createJob("Officier Supérieur GIGN", {
	color = blue,
	model = {
		"models/player/pmc_4/pmc__10.mdl",
		"models/player/pmc_4/pmc__11.mdl",
		"models/player/pmc_5/pmc__10.mdl",
		"models/player/pmc_5/pmc__11.mdl"
	},
	description = [[Vous êtes sous les ordres du Général]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"arrest_stick",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"realistic_hook",
		"defibrillator",
		"weapon_medkit",
		"m9k_m24",
		"nova_mechanic"
	},
	command = "osugign",
	max = 3,
	salary = 10000,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(250) end
})

TEAM_GIGNGENERAL = DarkRP.createJob("Général GIGN", {
	color = blue,
	model = {
		"models/player/pmc_4/pmc__01.mdl",
		"models/player/pmc_5/pmc__01.mdl"
	},
	description = [[Vous dirigez le GIGN]],
	weapons = {
		"drogue_search",
		"stunstick",
		"door_ram",
		"weaponchecker",
		"weapon_r_handcuffs",
		"stungun",
		"salute",
		"itemstore_checker",
		"arrest_stick",
		"unarrest_stick",
		"fine_list",
		"gen_badge",
		"realistic_hook",
		"defibrillator",
		"weapon_medkit",
		"m9k_m24",
		"nova_mechanic"
	},
	command = "gigngeneral",
	max = 2,
	salary = 10000,
	admin = 0,
	hasLicense = true,
	chief = true,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(290) end
})


--[[-------------------------------------------------------------------------
Farm
---------------------------------------------------------------------------]]

TEAM_BITMINER = DarkRP.createJob("Mineur de BitCoins", {
	color = orange,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous minez des BitCoins.]],
	weapons = {},
	command = "bitminer",
	max = 4,
	salary = 100,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BUSINESSMAN = DarkRP.createJob("Businessman", {
	color = orange,
	model = "models/player/gman_high.mdl",
	description = [[Vous employez des travailleurs.]],
	weapons = {},
	command = "businessman",
	max = 5,
	salary = 300,
	admin = 0,
	hasLicense = false
})

--[[-------------------------------------------------------------------------
Banque
---------------------------------------------------------------------------]]

TEAM_PBANQUIER = DarkRP.createJob("Patron de la Banque", {
	color = green,
	model = {
		"models/player/suits/male_03_open.mdl",
		"models/player/suits/male_09_open_waistcoat.mdl"
	},
	description = [[Vous dirigez les banquiers.]],
	weapons = {},
	command = "pbanquier",
	max = 1,
	salary = 2000,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BANQUIER = DarkRP.createJob("Banquier", {
	color = green,
	model = {
		"models/player/suits/male_04_shirt_tie.mdl",
		"models/player/suits/male_02_shirt_tie.mdl",
		"models/player/suits/male_01_shirt_tie.mdl"
	},
	description = [[Vous imprimez des billets.]],
	weapons = {},
	command = "banquier",
	max = 3,
	salary = 1000,
	admin = 0,
	hasLicense = false,
	candemote = false
})

--[[-------------------------------------------------------------------------
Banque
---------------------------------------------------------------------------]]

TEAM_SDF = DarkRP.createJob("SDF", {
	color = green,
	model = "models/player/scavenger/scavenger.mdl",
	description = [[Vous recoltez de l'argent.]],
	weapons = {},
	command = "sdf",
	max = 3,
	salary = 30,
	admin = 0,
	hasLicense = false,
	candemote = false,
	hobo = true
})

--[[-------------------------------------------------------------------------
Voleurs
---------------------------------------------------------------------------]]

TEAM_VOLEUR = DarkRP.createJob("Voleur", {
	color = orange,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous volez les gens et les voitures.]],
	weapons = {
		"lockpick",
		"swep_pickpocket"
	},
	command = "voleur",
	max = 2,
	salary = 100,
	admin = 0,
	hasLicense = false,
	candemote = false
})



TEAM_CAMBRIOLEUR = DarkRP.createJob("Cambrioleur", {
	color = orange,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl",
		"models/player/group01/cookies114.mdl"
	},
	description = [[Vous cambriolez les maisons.]],
	weapons = {
		"m9k_usp",
		"lockpick",
		"realistic_hook",
		"keypad_cracker"
	},
	command = "cambrioleur",
	max = 2,
	salary = 100,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_MICHTONEUSE = DarkRP.createJob("Michtoneuse", {
	color = green,
	model = "models/wrestlers/ashley_massaro.mdl",
	description = [[Vous récoltez de l'argent.]],
	weapons = {"swep_pickpocket"},
	command = "michto",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false
})

--[[-------------------------------------------------------------------------
Gangs
---------------------------------------------------------------------------]]

-- Gangsters

TEAM_CGANGSTER = DarkRP.createJob("Chef des Gangsters", {
	color = black,
	model = "models/player/alyx.mdl",
	description = [[Vous dirigez les Gangsters.]],
	weapons = {},
	command = "cgangster",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_GANGSTER = DarkRP.createJob("Gangster", {
	color = black,
	model = {
		"models/player/Group03/Female_01.mdl",
		"models/player/Group03/Female_02.mdl",
		"models/player/Group03/Female_03.mdl",
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {},
	command = "gangster",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_GANGSTERV = DarkRP.createJob("Gangster V.I.P", {
	color = black,
	model = {
		"models/player/Group03/Female_01.mdl",
		"models/player/Group03/Female_02.mdl",
		"models/player/Group03/Female_03.mdl",
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {
		"m9k_auga3",
		"keypad_cracker",
		"lockpick"
	},
	command = "gangsterv",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Mafieux

TEAM_CMAFIA = DarkRP.createJob("Parrain", {
	color = black,
	model = "models/vito.mdl",
	description = [[Vous dirigez les mafieux.]],
	weapons = {},
	command = "cmafia",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_MAFIA = DarkRP.createJob("Mafieux", {
	color = black,
	model = {
		"models/fearless/mafia02.mdl",
		"models/fearless/mafia04.mdl",
		"models/fearless/mafia06.mdl",
		"models/fearless/mafia07.mdl",
		"models/fearless/mafia09.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {},
	command = "mafia",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_MAFIAV = DarkRP.createJob("Mafieux V.I.P", {
	color = black,
	model = {
		"models/fearless/mafia02.mdl",
		"models/fearless/mafia04.mdl",
		"models/fearless/mafia06.mdl",
		"models/fearless/mafia07.mdl",
		"models/fearless/mafia09.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {
		"m9k_auga3",
		"keypad_cracker",
		"lockpick"
	},
	command = "mafiav",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Yakusas

TEAM_CYAKUSA = DarkRP.createJob("Chef des Yakuza", {
	color = black,
	model = {
		"models/sd/players/[dbs_grappler].mdl",
		"models/sd/players/[dbs_grappler_2].mdl"
	},
	description = [[Vous dirigez les Yakusas.]],
	weapons = {},
	command = "cyakuza",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_YAKUSA = DarkRP.createJob("Yakuza", {
	color = black,
	model = {
		"models/sd/players/[dbs_quick]-head_quick_dbs.mdl",
		"models/sd/players/[dbs_quick]-head_striker_dbs.mdl",
		"models/sd/players/[dbs_quick]-head_quick_dbs_2.mdl",
		"models/sd/players/[dbs_striker]-head_quick_dbs.mdl",
		"models/sd/players/[dbs_striker]-head_quick_dbs_2.mdl",
		"models/sd/players/[dbs_striker]-head_striker_dbs.mdl",
		"models/sd/players/[dbs_brawler_2]-head_brawler_dbs.mdl",
		"models/sd/players/[dbs_brawler]-head_brawler_dbs.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {},
	command = "yakuza",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_YAKUSAV = DarkRP.createJob("Yakuza V.I.P", {
	color = black,
	model = {
		"models/sd/players/[dbs_quick]-head_quick_dbs.mdl",
		"models/sd/players/[dbs_quick]-head_striker_dbs.mdl",
		"models/sd/players/[dbs_quick]-head_quick_dbs_2.mdl",
		"models/sd/players/[dbs_striker]-head_quick_dbs.mdl",
		"models/sd/players/[dbs_striker]-head_quick_dbs_2.mdl",
		"models/sd/players/[dbs_striker]-head_striker_dbs.mdl",
		"models/sd/players/[dbs_brawler_2]-head_brawler_dbs.mdl",
		"models/sd/players/[dbs_brawler]-head_brawler_dbs.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {
		"m9k_auga3",
		"keypad_cracker",
		"lockpick"
	},
	command = "yakuzav",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Braqueurs

TEAM_CBRAQUEUR = DarkRP.createJob("Chef des Braqueurs", {
	color = black,
	model = {
		"models/player/suits/robber_shirt.mdl",
		"models/player/suits/robber_tie.mdl",
		"models/player/suits/robber_open.mdl"
	},
	description = [[Vous dirigez les Braqueurs.]],
	weapons = {},
	command = "cbraqueur",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BRAQUEUR = DarkRP.createJob("Braqueur", {
	color = black,
	model = {
		"models/player/suits/robber_shirt.mdl",
		"models/player/suits/robber_tie.mdl",
		"models/player/suits/robber_open.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {},
	command = "braqueur",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BRAQUEURV = DarkRP.createJob("Braqueur V.I.P", {
	color = black,
	model = {
		"models/player/suits/robber_shirt.mdl",
		"models/player/suits/robber_tie.mdl",
		"models/player/suits/robber_open.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {
		"m9k_auga3",
		"keypad_cracker",
		"lockpick"
	},
	command = "braqueurv",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Cartel

TEAM_CCARTEL = DarkRP.createJob("Chef du Cartel", {
	color = black,
	model = {
		"models/fearless/suit04.mdl",
		"models/fearless/suit07.mdl"
	},
	description = [[Vous dirigez les Cartels.]],
	weapons = {},
	command = "ccartel",
	max = 1,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_CARTEL = DarkRP.createJob("Cartel", {
	color = black,
	model = {
		"models/fearless/wsuit09.mdl",
		"models/fearless/wsuit15.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {},
	command = "cartel",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_CARTELV = DarkRP.createJob("Cartel V.I.P", {
	color = black,
	model = {
		"models/fearless/wsuit09.mdl",
		"models/fearless/wsuit15.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {
		"m9k_auga3",
		"keypad_cracker",
		"lockpick"
	},
	command = "cartelv",
	max = 4,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Cripz

TEAM_CCRIPZ = DarkRP.createJob("Chef Cripz", {
	color = black,
	model = "models/player/cripz/slow_3.mdl",
	description = [[Vous dirigez les Cripz.]],
	weapons = {"weapon_fists"},
	command = "ccripz",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_CRIPZ = DarkRP.createJob("Cripz", {
	color = black,
	model = {
		"models/player/cripz/slow_1.mdl",
		"models/player/cripz/slow_2.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {"weapon_fists"},
	command = "cripz",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_CRIPZV = DarkRP.createJob("Cripz V.I.P", {
	color = black,
	model = {
		"models/player/cripz/slow_1.mdl",
		"models/player/cripz/slow_2.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {
		"m9k_auga3",
		"keypad_cracker",
		"lockpick"
	},
	command = "cripzv",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Bloodz

TEAM_CBLOODZ = DarkRP.createJob("Chef Bloodz", {
	color = black,
	model = "models/player/bloodz/slow_3.mdl",
	description = [[Vous dirigez les Bloodz.]],
	weapons = {"weapon_fists"},
	command = "cbloodz",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BLOODZ = DarkRP.createJob("Bloodz", {
	color = black,
	model = {
		"models/player/bloodz/slow_2.mdl",
		"models/player/bloodz/slow_1.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {"weapon_fists"},
	command = "bloodz",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BLOODZV = DarkRP.createJob("Bloodz V.I.P", {
	color = black,
	model = {
		"models/player/bloodz/slow_2.mdl",
		"models/player/bloodz/slow_1.mdl"
	},
	description = [[Vous agissez illégalement.]],
	weapons = {
		"m9k_auga3",
		"keypad_cracker",
		"lockpick"
	},
	command = "bloodzv",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

--[[-------------------------------------------------------------------------
Services
---------------------------------------------------------------------------]]

TEAM_SAMU = DarkRP.createJob("Samu", {
	color = green,
	model = {
		"models/player/portal/Male_02_Medic.mdl",
		"models/player/portal/Male_04_Medic.mdl",
		"models/player/portal/Male_05_Medic.mdl",
		"models/player/portal/Male_06_Medic.mdl",
		"models/player/portal/Male_07_Medic.mdl",
		"models/player/portal/Male_08_Medic.mdl",
		"models/player/portal/Male_09_Medic.mdl"
	},
	description = [[Vous soignez et réanimez les citoyens.]],
	weapons = {
		"defibrillator",
		"med_kit"
	},
	command = "samu",
	max = 3,
	salary = 2000,
	admin = 0,
	hasLicense = false,
	candemote = false,
	medic = true
})

TEAM_ARMURIER = DarkRP.createJob("Armurier", {
	color = orange,
	model = "models/player/leet.mdl",
	description = [[Vous vendez des armes légères.]],
	weapons = {},
	command = "armurier",
	max = 4,
	salary = 400,
	admin = 0,
	hasLicense = true,
	candemote = false
})

TEAM_TRAFIQUANT = DarkRP.createJob("Trafiquant d'Armes", {
	color = orange,
	model = "models/player/leet.mdl",
	description = [[Vous vendez des armes lourdes.]],
	weapons = {},
	command = "trafiquant",
	max = 4,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_QUINCAILLER = DarkRP.createJob("Quincailler", {
	color = orange,
	model = "models/player/odessa.mdl",
	description = [[Vous vendez diverses choses.]],
	weapons = {},
	command = "quincailler",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_COOK = DarkRP.createJob("Cuisinier", {
	color = green,
	model = "models/fearless/chef1.mdl",
	description = [[Vous cuisinez pour les citoyens.]],
	weapons = {
		"weapon_hl2pan",
		"weapon_hl2pot"
	},
	command = "cuisinier",
	max = 2,
	salary = 1000,
	admin = 0,
	hasLicense = false,
	candemote = false,
	cook = true
})

TEAM_TOWER = DarkRP.createJob("Dépanneur",{
	color = green,
	model = "models/player/magnusson.mdl",
	description = [[]],
	weapons = {
		"tow_attach",
		"nova_mechanic"
	},
	command = "tower",
	max = 2,
	salary = 500,
	admin = 0,
	hasLicense = false,
	candemote = false,
})

--[[-------------------------------------------------------------------------
Drogues
---------------------------------------------------------------------------]]

TEAM_METH = DarkRP.createJob("Fabriquant de Meth", {
	color = orange,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous fabriquez de la meth.]],
	weapons = {"zmlab_extractor"},
	command = "meth",
	max = 3,
	salary = 200,
	admin = 0,
	hasLicense = false
})

TEAM_WEED = DarkRP.createJob("Fabriquant de Weed", {
	color = orange,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous fabriquez de la weed.]],
	weapons = {"zwf_shoptablet", "zwf_cable"},
	command = "weed",
	max = 3,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BICRAVEUR = DarkRP.createJob("Bicraveur", {
	color = orange,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous vendez de la drogue.]],
	weapons = {},
	command = "bicraveur",
	max = 2,
	salary = 100,
	admin = 0,
	hasLicense = false,
	candemote = false
})

--[[-------------------------------------------------------------------------
Autres
---------------------------------------------------------------------------]]

TEAM_KIDNAPPEUR = DarkRP.createJob("Kidnappeur V.I.P", {
	color = yellow,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous Kidnappez les gens.]],
	weapons = {
		"csgo_bayonet",
		"scalpel"
	},
	command = "kidnappeur",
	max = 2,
	salary = 100,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_PSYCHOPATHE = DarkRP.createJob("Psychopathe V.I.P", {
	color = yellow,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl",
		"models/billy_jigsaw.mdl"
	},
	description = [[Vous tuez les gens discretement.]],
	weapons = {
		"csgo_huntsman_case",
		"stunstick",
		"weapon_hl2brokenbottle",
		"weapon_hl2pipe"
	},
	command = "psychopathe",
	max = 2,
	salary = 100,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_ENFANT = DarkRP.createJob("Enfant Bizarre V.I.P", {
	color = yellow,
	model = "models/player/dewobedil/chucky/chucky.mdl",
	description = [[Vous ignorez la vie.]],
	weapons = {"csgo_bayonet"},
	command = "enfant",
	max = 2,
	salary = 300,
	admin = 0,
	hasLicense = false
})

TEAM_TERRORISTE = DarkRP.createJob("Terroriste V.I.P", {
	color = grey,
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous tuez lors de votre attentat.]],
	weapons = {
		"m9k_ak47",
		"csgo_bayonet",
		"m9k_ied_detonator"
	},
	command = "terroriste",
	max = 2,
	salary = 100,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerDeath = function(ply, weapon, killer)
		ply:teamBan()
		ply:changeTeam(TEAM_CITIZEN, true)
		DarkRP.notifyAll(0, 4, "Le terroriste est mort.")
	end
})

TEAM_TUEUR = DarkRP.createJob("Tueur a Gages V.I.P", {
	color = black,
	model = {
		"models/player/agent_47.mdl",
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous tuez sous contrat.]],
	weapons = {
		"m9k_m98b",
		"m9k_glock",
		"realistic_hook",
		"hitman_googles"
	},
	command = "tueur",
	max = 2,
	salary = 1000,
	admin = 0,
	hasLicense = false
})

--[[-------------------------------------------------------------------------
Sécurité
---------------------------------------------------------------------------]]

TEAM_ADS = DarkRP.createJob("Agent De Securite", {
	color = red,
	model = {
		"models/player/guard_pack/guard_01.mdl",
		"models/player/guard_pack/guard_02.mdl",
		"models/player/guard_pack/guard_03.mdl",
		"models/player/guard_pack/guard_04.mdl",
		"models/player/guard_pack/guard_05.mdl",
		"models/player/guard_pack/guard_06.mdl",
		"models/player/guard_pack/guard_07.mdl",
		"models/player/guard_pack/guard_08.mdl",
		"models/player/guard_pack/guard_09.mdl"
	},
	description = [[Vous protégez les commerces légaux.]],
	weapons = {
		"weaponchecker"
	},
	command = "securite",
	max = 5,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(50) end
})

TEAM_MERCENAIRE = DarkRP.createJob("Mercenaire", {
	color = black,
	model = "models/player/guerilla.mdl",
	description = [[Vous protégez votre client.]],
	weapons = {},
	command = "mercenaire",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false
})

--[[-------------------------------------------------------------------------
Chomeur
---------------------------------------------------------------------------]]

TEAM_CITIZEN = DarkRP.createJob("Chomeur", {
	color = Color(98, 0, 114, 255),
	model = {
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/male_02_shirt.mdl",
		"models/player/suits/male_03_shirt.mdl",
		"models/player/suits/male_04_shirt.mdl",
		"models/player/suits/male_05_shirt_tie.mdl",
		"models/player/suits/male_06_shirt.mdl",
		"models/player/suits/male_07_shirt.mdl",
		"models/player/suits/male_08_shirt.mdl",
		"models/player/suits/male_09_shirt.mdl"
	},
	description = [[Vous cherchez un travail.]],
	weapons = {},
	command = "chomeur",
	max = 0,
	salary = 100,
	admin = 0,
	hasLicense = false,
	candemote = false
})

--[[-------------------------------------------------------------------------
Staff
---------------------------------------------------------------------------]]

TEAM_STAFF = DarkRP.createJob("Staff", {
	color = green,
	model = {
		"models/fearless/suit04.mdl"
	},
	description = [[Vous administrez le serveur.]],
	weapons = {
		"adminstick",
		"weaponchecker",
		"itemstore_checker",
		"weapon_r_handcuffs",
		"weapon_keypadchecker",
		"drogue_search"
	},
	command = "staff",
	max = 0,
	salary = 50000,
	admin = 0,
	hasLicense = false,
	candemote = false,
	customCheck = function(ply) return CLIENT or table.HasValue({
			"superadmin",
			"users",
			"admin",
			"moderateur",
			"moderateur test",
			"helpeur",
			"helpeur test",
		},
		ply:GetNWString("usergroup"))
	end
})

--[[-------------------------------------------------------------------------
Jobs customs
---------------------------------------------------------------------------]]

TEAM_ZETTA = DarkRP.createJob("Nietski", {
	color = black,
	model = "models/player/Suits/male_07_open_tie.mdl",
	description = [[Job Custom.]],
	weapons = {
		"keypad_cracker",
		"lockpick"
	},
	command = "nietski",
	max = 12,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_GUERRIER = DarkRP.createJob("Guerken", {
	color = black,
	model = {
		"models/csgoanarchist1pm.mdl",
		"models/csgoanarchist2pm.mdl"
	},
	description = [[Job Custom.]],
	weapons = {
		"keypad_cracker",
		"lockpick"
	},
	command = "guerrier",
	max = 12,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_SUKEHIRO = DarkRP.createJob("Sukehiro", {
	color = black,
	model = "models/player/pd2_wolf_p.mdl",
	description = [[Job Custom.]],
	weapons = {
		"keypad_cracker",
		"lockpick"
	},
	command = "sukehiro",
	max = 12,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_AKASHI = DarkRP.createJob("Akashi", {
	color = black,
	model = "models/csgoleet4pm.mdl",
	description = [[Job Custom.]],
	weapons = {
		"keypad_cracker",
		"lockpick"
	},
	command = "akashi",
	max = 16,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_KOTOMINE = DarkRP.createJob("Kotomine", {
	color = black,
	model = "models/player/Suits/male_07_closed_tie.mdl",
	description = [[Job Custom.]],
	weapons = {
		"keypad_cracker",
		"lockpick"
	},
	command = "kotomine",
	max = 12,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

TEAM_WHITE = DarkRP.createJob("White", {
	color = black,
	model = "models/player/kuma/alqaeda_commando.mdl",
	description = [[Job Custom.]],
	weapons = {},
	command = "white",
	max = 6,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BAKO = DarkRP.createJob("Bako", {
	color = black,
	model = {
		"models/player/suits/male_05_closed_coat_tie.mdl",
		"models/player/suits/male_09_closed_coat_tie.mdl"
	},
	description = [[Job Custom.]],
	weapons = {},
	command = "bako",
	max = 6,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

GAMEMODE.DefaultTeam = TEAM_CITIZEN

GAMEMODE.CivilProtection = {
	[TEAM_GENDARME] = true,
	[TEAM_MGN] = true,
	[TEAM_AGN] = true,
	[TEAM_BRI] = true,
	[TEAM_SDR] = true,
	[TEAM_OFFICIER] = true,
	[TEAM_RECRUEGIGN] = true,
	[TEAM_MEDICGIGN] = true,
	[TEAM_SOLDATGIGN] = true,
	[TEAM_SNIPERGIGN] = true,
	[TEAM_INGEGIGN] = true,
	[TEAM_OSUGIGN] = true,
	[TEAM_MARECHAL] = true,
	[TEAM_GENGEN] = true,
	[TEAM_GIGNGENERAL] = true,
	[TEAM_AGS] = true
}

DarkRP.addHitmanTeam(TEAM_TUEUR)