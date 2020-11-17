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
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

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
	description = [[Vous représentez l'autorité municipale.]],
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
	model = {
		"models/fearless/gsuit18.mdl",
		"models/fearless/rosa.mdl"
	},
	description = [[Vous organiser et assurer l'accueil des usagers du service public dans les meilleurs conditions.]],
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
	description = [[Votre but est de protéger le Maire ainsi que mettre en oeuvre l'ensemble des mesures nécessaires à l'organisation matérielle et à la sécurité des déplacements du Maire.]],
	weapons = {"weaponchecker"},
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
	description = [[Votre mission consiste à assister et à représenter en justice une personne qui se présente à lui et à défendre ses intérêts devant les différentes juridictions.]],
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
		"models/fearless/02.mdl",
		"models/fearless/mafia02.mdl",
		"models/player/bloodz/slow_1.mdl",
		"models/player/bond.mdl",
		"models/player/cripz/slow_1.mdl",
		"models/player/Group03/male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/suits/male_01_shirt.mdl",
		"models/player/suits/robber_shirt.mdl",
		"models/sd/players/[dbs_brawler_2]-head_brawler_dbs.mdl"
	},
	description = [[Personne qui travaille dans le plus grand secret pour l'espionnage d'une organisation ou d'un gouvernement.]],
	weapons = {
		"ags_badge",
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"keypad_cracker",
		"lockpick",
		"m9k_usp",
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
	description = [[Militaire appartenant à une formation de la gendarmerie nationale.]],
	weapons = {
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"itemstore_checker",
		"salute",
		"stunstick",
		"weapon_r_handcuffs"
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
	description = [[Médecin de la Gendarmerie]],
	weapons = {
		"door_ram",
		"drogue_search",
		"dsr_medkit",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"itemstore_checker",
		"salute",
		"stunstick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
	description = [[Armurier de la Gendarmerie]],
	weapons = {
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"itemstore_checker",
		"salute",
		"stunstick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
	description = [[Sureté des routes]],
	weapons = {
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"itemstore_checker",
		"nova_spikestrip_deployer",
		"salute",
		"stunstick",
		"swep_drone_controller",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
	description = [[Brigade Rapide d'intervention]],
	weapons = {
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"itemstore_checker",
		"nova_spikestrip_deployer",
		"salute",
		"stunstick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
	model = {
		"models/player/portal/russian_police1_armor.mdl",
		"models/player/portal/russian_police2_armor.mdl",
		"models/player/portal/russian_police3_armor.mdl",
		"models/player/portal/russian_police4_armor.mdl",
		"models/player/portal/russian_police5_armor.mdl",
		"models/player/portal/russian_police6_armor.mdl",
		"models/player/portal/russian_police7_armor.mdl"
	},
	description = [[Officier Supérieur de la Gendarmerie]],
	weapons = {
		"arrest_stick",
		"defibrillator",
		"door_ram",
		"drogue_search",
		"dsr_medkit",
		"dsr_megaphone",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"itemstore_checker",
		"nova_spikestrip_deployer",
		"salute",
		"stunstick",
		"swep_drone_controller",
		"unarrest_stick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
		"models/player/pmc_1/pmc__01.mdl",
		"models/player/pmc_5/pmc__01.mdl",
		"models/player/pmc_6/pmc__01.mdl"
	},
	description = [[Officier Général de la Gendarmerie]],
	weapons = {
		"arrest_stick",
		"defibrillator",
		"door_ram",
		"drogue_search",
		"dsr_medkit",
		"dsr_megaphone",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"itemstore_checker",
		"nova_spikestrip_deployer",
		"salute",
		"stunstick",
		"swep_drone_controller",
		"unarrest_stick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
	description = [[Maréchal, commandant des Gendarmerie]],
	weapons = {
		"arrest_stick",
		"door_ram",
		"drogue_search",
		"dsr_medkit",
		"dsr_megaphone",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"itemstore_checker",
		"m9k_m24",
		"nova_spikestrip_deployer",
		"realistic_hook",
		"salute",
		"stunstick",
		"swep_drone_controller",
		"unarrest_stick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
	description = [[Groupe d'intervention de la gendarmerie nationale. Unité d'élite de la gendarmerie nationale spécialisée dans la lutte contre le terrorisme et la libération d'otages.]],
	weapons = {
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"googles",
		"itemstore_checker",
		"realistic_hook",
		"salute",
		"stunstick",
		"unarrest_stick",
		"weapon_r_handcuffs"
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
		"models/player/pmc_4/pmc__08.mdl",
		"models/player/pmc_4/pmc__09.mdl",
		"models/player/pmc_5/pmc__08.mdl",
		"models/player/pmc_5/pmc__09.mdl"
	},
	description = [[Groupe d'intervention de la gendarmerie nationale. Unité d'élite de la gendarmerie nationale spécialisée dans la lutte contre le terrorisme et la libération d'otages.]],
	weapons = {
		"defibrillator",
		"door_ram",
		"drogue_search",
		"dsr_medkit",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"googles",
		"itemstore_checker",
		"realistic_hook",
		"salute",
		"stunstick",
		"unarrest_stick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
	},
	command = "medicgign",
	max = 4,
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
	description = [[Groupe d'intervention de la gendarmerie nationale. Unité d'élite de la gendarmerie nationale spécialisée dans la lutte contre le terrorisme et la libération d'otages.]],
	weapons = {
		"deployable_shield",
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"googles",
		"itemstore_checker",
		"m9k_jackhammer",
		"realistic_hook",
		"salute",
		"stunstick",
		"unarrest_stick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
	},
	command = "soldatgign",
	max = 4,
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
	description = [[Groupe d'intervention de la gendarmerie nationale. Unité d'élite de la gendarmerie nationale spécialisée dans la lutte contre le terrorisme et la libération d'otages.]],
	weapons = {
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"googles",
		"itemstore_checker",
		"m9k_m24",
		"realistic_hook",
		"salute",
		"stunstick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
	},
	command = "snipergign",
	max = 3,
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
	description = [[Groupe d'intervention de la gendarmerie nationale. Unité d'élite de la gendarmerie nationale spécialisée dans la lutte contre le terrorisme et la libération d'otages.]],
	weapons = {
		"door_ram",
		"drogue_search",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"googles",
		"itemstore_checker",
		"nova_mechanic",
		"nova_spikestrip_deployer",
		"realistic_hook",
		"salute",
		"stunstick",
		"swep_drone_controller",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
	},
	command = "ingegign",
	max = 4,
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
	description = [[Groupe d'intervention de la gendarmerie nationale. Unité d'élite de la gendarmerie nationale spécialisée dans la lutte contre le terrorisme et la libération d'otages.]],
	weapons = {
		"arrest_stick",
		"defibrillator",
		"deployable_shield",
		"door_ram",
		"drogue_search",
		"dsr_medkit",
		"dsr_megaphone",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"googles",
		"itemstore_checker",
		"m9k_m24",
		"nova_mechanic",
		"nova_spikestrip_deployer",
		"realistic_hook",
		"salute",
		"stunstick",
		"swep_drone_controller",
		"unarrest_stick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
	description = [[Groupe d'intervention de la gendarmerie nationale. Unité d'élite de la gendarmerie nationale spécialisée dans la lutte contre le terrorisme et la libération d'otages.]],
	weapons = {
		"arrest_stick",
		"defibrillator",
		"deployable_shield",
		"door_ram",
		"drogue_search",
		"dsr_medkit",
		"dsr_megaphone",
		"dsr_taser",
		"fine_list",
		"gen_badge",
		"googles",
		"itemstore_checker",
		"m9k_m24",
		"nova_mechanic",
		"nova_spikestrip_deployer",
		"realistic_hook",
		"salute",
		"stunstick",
		"swep_drone_controller",
		"unarrest_stick",
		"wcd_speedchecker",
		"weapon_r_handcuffs"
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
	description = [[Individu vérifiant les transactions et opérations effectuées par les utilisateurs sur le réseau.]],
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
	description = [[Vous êtes un homme d'affaires.]],
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
	description = [[Il dirige les employés de la banque et porte la responsabilité des résultats obtenus.]],
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
	description = [[Personne dont la profession est de diriger, administrer ou gérer une banque ou un établissement de crédit.]],
	weapons = {},
	command = "banquier",
	max = 3,
	salary = 1000,
	admin = 0,
	hasLicense = false,
	candemote = false
})

--[[-------------------------------------------------------------------------
SDF
---------------------------------------------------------------------------]]

TEAM_SDF = DarkRP.createJob("SDF", {
	color = green,
	model = "models/player/scavenger/scavenger.mdl",
	description = [[Personne qui n'a pas de logement fixe, échappant à tout contrôle ou recensement administratif.]],
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
	description = [[Personne qui soustrait frauduleusement ce qui appartient à autrui.]],
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
	description = [[Personne qui soustrait frauduleusement ce qui appartient à autrui.]],
	weapons = {
		"keypad_cracker",
		"lockpick",
		"m9k_usp",
		"realistic_hook"
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
	description = [[Membre d'un gang, d'une association de malfaiteurs.]],
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
		"models/player/group03/Male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/Male_03.mdl",
		"models/player/Group03/Male_04.mdl"
	},
	description = [[Membre d'un gang, d'une association de malfaiteurs.]],
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
		"models/player/group03/Male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/Male_03.mdl",
		"models/player/Group03/Male_04.mdl"
	},
	description = [[Membre d'un gang, d'une association de malfaiteurs.]],
	weapons = {
		"keypad_cracker",
		"lockpick",
		"m9k_auga3"
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
	description = [[Association secrète sicilienne ayant de nombreuses ramifications notamment en Italie et aux États-Unis qui utilise des moyens illicites pour servir ses intérêts.]],
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
	description = [[Association secrète sicilienne ayant de nombreuses ramifications notamment en Italie et aux États-Unis qui utilise des moyens illicites pour servir ses intérêts.]],
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
	description = [[Association secrète sicilienne ayant de nombreuses ramifications notamment en Italie et aux États-Unis qui utilise des moyens illicites pour servir ses intérêts.]],
	weapons = {
		"keypad_cracker",
		"lockpick",
		"m9k_auga3"
	},
	command = "mafiav",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Yakuzas

TEAM_CYAKUZA = DarkRP.createJob("Chef des Yakuza", {
	color = black,
	model = {
		"models/sd/players/[dbs_grappler].mdl",
		"models/sd/players/[dbs_grappler_2].mdl"
	},
	description = [[Membre de la mafia japonaise.]],
	weapons = {},
	command = "cyakuza",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_YAKUZA = DarkRP.createJob("Yakuza", {
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
	description = [[Membre de la mafia japonaise.]],
	weapons = {},
	command = "yakuza",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_YAKUZAV = DarkRP.createJob("Yakuza V.I.P", {
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
	description = [[Membre de la mafia japonaise.]],
	weapons = {
		"keypad_cracker",
		"lockpick",
		"m9k_auga3"
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
	description = [[Auteur d'un braquage et malfaiteur qui commet des attaques à main armée.]],
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
	description = [[Auteur d'un braquage et malfaiteur qui commet des attaques à main armée.]],
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
	description = [[Auteur d'un braquage et malfaiteur qui commet des attaques à main armée.]],
	weapons = {
		"keypad_cracker",
		"lockpick",
		"m9k_auga3"
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
	description = [[Groupement d'intérêt dans l'industrie ou la politique.]],
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
	description = [[Groupement d'intérêt dans l'industrie ou la politique.]],
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
	description = [[Groupement d'intérêt dans l'industrie ou la politique.]],
	weapons = {
		"keypad_cracker",
		"lockpick",
		"m9k_auga3"
	},
	command = "cartelv",
	max = 4,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Crips

TEAM_CCRIPS = DarkRP.createJob("Chef Crips", {
	color = black,
	model = "models/player/cripz/slow_3.mdl",
	description = [[Gang originaire de South Central Los Angeles, sur la côte ouest des États-Unis.]],
	weapons = {},
	command = "ccrips",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_CRIPS = DarkRP.createJob("Crips", {
	color = black,
	model = {
		"models/player/cripz/slow_1.mdl",
		"models/player/cripz/slow_2.mdl"
	},
	description = [[Gang originaire de South Central Los Angeles, sur la côte ouest des États-Unis.]],
	weapons = {},
	command = "crips",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_CRIPSV = DarkRP.createJob("Crips V.I.P", {
	color = black,
	model = {
		"models/player/cripz/slow_1.mdl",
		"models/player/cripz/slow_2.mdl"
	},
	description = [[Gang originaire de South Central Los Angeles, sur la côte ouest des États-Unis.]],
	weapons = {
		"keypad_cracker",
		"lockpick",
		"m9k_auga3"
	},
	command = "cripsv",
	max = 4,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
})

-- Bloods

TEAM_CBLOODS = DarkRP.createJob("Chef Bloods", {
	color = black,
	model = "models/player/bloodz/slow_3.mdl",
	description = [[Gang de rue fondé en 1972 à Los Angeles en Californie.]],
	weapons = {},
	command = "cbloods",
	max = 1,
	salary = 400,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BLOODS = DarkRP.createJob("Bloods", {
	color = black,
	model = {
		"models/player/bloodz/slow_2.mdl",
		"models/player/bloodz/slow_1.mdl"
	},
	description = [[Gang de rue fondé en 1972 à Los Angeles en Californie.]],
	weapons = {},
	command = "bloods",
	max = 6,
	salary = 200,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_BLOODSV = DarkRP.createJob("Bloods V.I.P", {
	color = black,
	model = {
		"models/player/bloodz/slow_2.mdl",
		"models/player/bloodz/slow_1.mdl"
	},
	description = [[Gang de rue fondé en 1972 à Los Angeles en Californie.]],
	weapons = {
		"keypad_cracker",
		"lockpick",
		"m9k_auga3"
	},
	command = "bloodsv",
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
		"dsr_medkit"
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
	description = [[Personne qui fabrique ou vend des armes.]],
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
	description = [[Personne qui vend ou fabrique de la quincaillerie.]],
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
	description = [[Personne qui sait faire la cuisine.]],
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

TEAM_TOWER = DarkRP.createJob("Dépanneur", {
	color = green,
	model = "models/player/magnusson.mdl",
	description = [[]],
	weapons = {
		"nova_mechanic",
		"tow_attach"
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
	description = [[Personne qui fabrique illégalement de la drogue.]],
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
	description = [[Personne qui fabrique illégalement de la drogue.]],
	weapons = {
		"zwf_cable",
		"zwf_shoptablet"
	},
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
	description = [[Revendeur de drogue, dealer.]],
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
	description = [[Votre but est d'enlever quelqu'un en vue d'obtenir une rançon ou une contrepartie quelconque.]],
	weapons = {
		"csgo_bayonet",
		"scalpel",
		"weapon_r_baton"
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
	description = [[Personne souffrant d'un important trouble du comportement. Il agit de manière très impulsive, dans le de but de détruire psychologiquement et/ou physiquement quelqu'un.]],
	weapons = {
		"m9k_machete",
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
	model = {
		"models/player/dewobedil/chucky/chucky.mdl",
		"models/player/portal_and_mika/kid.mdl"
	},
	description = [[Vous êtes un enfant possédé par l'esprit d'un tueur en série.]],
	weapons = {"csgo_huntsman_case"},
	command = "enfant",
	max = 2,
	salary = 300,
	admin = 0,
	hasLicense = false,
	candemote = false
})

TEAM_TERRORISTE = DarkRP.createJob("Terroriste V.I.P", {
	color = grey,
	model = {
		"models/fearless/02.mdl",
		"models/fearless/mafia02.mdl",
		"models/player/gman_high.mdl",
		"models/player/guard_pack/guard_07.mdl",
		"models/player/leet.mdl",
		"models/player/suits/male_07_shirt.mdl"
	},
	description = [[Personne qui utilise la terreur et la violence pour imposer ses idées politiques ou son autorité.]],
	weapons = {
		"csgo_bayonet",
		"m9k_ak47",
		"m9k_ied_detonator",
		"m9k_suicide_bomb"
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
	end,
	PlayerLoadout = function(ply) ply:SetHealth(100) ply:SetArmor(150) end
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
	description = [[Personne qui se fait rémunérer pour assassiner d'autres personnes.]],
	weapons = {
		"hitman_googles",
		"m9k_glock",
		"m9k_m98b",
		"realistic_hook"
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
	description = [[Employé chargé des tâches de gardiennage des bâtiments. Il est là pour surveiller mais également pour protéger, aussi bien les personnes que les biens.]],
	weapons = {"weaponchecker"},
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
	description = [[Personne qui ne travaille que pour un salaire, qui est inspiré par la seule considération du gain.]],
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
	color = Color(98, 0, 114),
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
	description = [[Personne qui est involontairement privée de travail.]],
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
	model = "models/fearless/suit04.mdl",
	description = [[Membre du Staff.]],
	weapons = {
		"adminstick",
		"itemstore_checker",
		"weapon_keypadchecker",
		"weapon_r_handcuffs"
	},
	command = "staff",
	max = 0,
	salary = 50000,
	admin = 0,
	hasLicense = false,
	candemote = false,
	customCheck = function(ply)
		return CLIENT or table.HasValue({
			"superadmin",
			"users",
			"admin",
			"moderateur",
			"moderateur test",
			"helpeur",
			"helpeur test"
		}, ply:GetNWString("usergroup"))
	end
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
	[TEAM_GIGNGENERAL] = true
}

DarkRP.addHitmanTeam(TEAM_MOB)