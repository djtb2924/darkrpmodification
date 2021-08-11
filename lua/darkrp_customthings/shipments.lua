--[[-------------------------------------------------------------------------
DarkRP custom shipments and guns
-----------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomShipmentFields

Add shipments and guns under the following line:
---------------------------------------------------------------------------]]

-- Copyright © LiveYourGame, 2021

--[[-------------------------------------------------------------------------
Paquetage
---------------------------------------------------------------------------]]

DarkRP.createShipment("Paquetage métier", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "job_package",
	price = 50000,
	amount = 1,
	separate = true,
	pricesep = 50000,
	noship = true
})

--[[-------------------------------------------------------------------------
Quincailler
---------------------------------------------------------------------------]]
local quincTbl = {TEAM_QUINCAILLER}

-- Restrains
DarkRP.createShipment("Attaches Serflex", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "weapon_r_restrains",
	amount = 1,
	price = 50000,
	allowed = quincTbl
})

-- Bijouterie
DarkRP.createShipment("Sac à bijoux", {
	model = "models/sterling/ajr_backpack.mdl",
	entity = "advancedrobbery_robbery_bag",
	amount = 1,
	price = 1000,
	allowed = quincTbl
})

DarkRP.createShipment("Telephone bijoux", {
	model = "models/sterling/ajr_phone_w.mdl",
	entity = "advancedrobbery_cellphone",
	amount = 1,
	price = 1000,
	allowed = quincTbl
})

DarkRP.createShipment("Marteau brise glace", {
	model = "models/sterling/ajr_hammer_w.mdl",
	entity = "jewelry_robbery_hammer",
	amount = 1,
	price = 1000,
	allowed = quincTbl
})

-- Couteaux
local vanillaKnives = {
	["bayonet"] = 15000,
	["bowie"] = 20000,
	["butterfly"] = 8000,
	["falchion"] = 18000,
	["flip"] = 10000,
	["gut"] = 13000,
	["karambit"] = 200000,
	["m9"] = 200000
}

for k, v in pairs(vanillaKnives) do
	DarkRP.createShipment(string.sub(k, 1, 1):upper() .. string.sub(k, 2), {
		model = "models/weapons/w_csgo_" .. k .. ".mdl",
		entity = "csgo_" .. k,
		price = v,
		amount = 1,
		allowed = quincTbl
	})
end

DarkRP.createShipment("Dagues | Tigger Tooth", {
	model = "models/weapons/w_csgo_push.mdl",
	entity = "csgo_daggers_tiger",
	price = 30000,
	amount = 1,
	allowed = quincTbl
})

DarkRP.createShipment("Baïonnette M9 | Fade", {
	model = "models/weapons/w_csgo_m9.mdl",
	entity = "csgo_m9_fade",
	amount = 1,
	price = 40000,
	allowed = quincTbl
})

DarkRP.createShipment("Papillon | Marble Fade", {
	model = "models/weapons/w_csgo_butterfly.mdl",
	entity = "csgo_butterfly_marblefade",
	amount = 1,
	price = 35000,
	allowed = quincTbl
})

DarkRP.createShipment("Karambit | Autotronic", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit_autotronic",
	amount = 1,
	price = 30000,
	allowed = quincTbl
})

--[[-------------------------------------------------------------------------
Armes
---------------------------------------------------------------------------]]

local function createShipments(weps, sellers)
	for i = 1, #weps do
		DarkRP.createShipment(weps[i][1], {
			model = weps[i][3],
			entity = weps[i][2],
			price = weps[i][4],
			amount = 1,
			allowed = sellers
		})
	end
end

local armuWeps = {
	-- Pistols
	{"Raging Bull - Scoped", "m9k_scoped_taurus", "models/weapons/w_raging_bull_scoped.mdl", 60000},
	{"Glock 18", "m9k_glock", "models/weapons/w_dmg_glock.mdl", 60000},
	{"Desert Eagle", "m9k_deagle", "models/weapons/w_tcom_deagle.mdl", 60000},
	{"HK USP", "m9k_usp", "models/weapons/w_pist_fokkususp.mdl", 50000},
	{"M92 Beretta", "m9k_m92beretta", "models/weapons/w_beretta_m92.mdl", 40000},
	{"HK45C", "m9k_hk45", "models/weapons/w_hk45c.mdl", 40000},
	{"Colt 1911", "m9k_colt1911", "models/weapons/s_dmgf_co1911.mdl", 40000},
	-- SMGs
	{"KRISS Vector", "m9k_vector", "models/weapons/w_kriss_vector.mdl", 80000},
	{"TEC-9", "m9k_tec9", "models/weapons/w_intratec_tec9.mdl", 75000},
	{"FN P90", "m9k_smgp90", "models/weapons/w_fn_p90.mdl", 75000},
	{"HK MP5", "m9k_mp5", "models/weapons/w_hk_mp5.mdl", 75000},
	{"HK MP7", "m9k_mp7", "models/weapons/w_mp7_silenced.mdl", 50000},
}
createShipments(armuWeps, {TEAM_ARMURIER})

local trafiWeps = {
	-- Rifles
	{"SCAR", "m9k_scar", "models/weapons/w_fn_scar_h.mdl", 100000},
	{"TAR-21", "m9k_tar21", "models/weapons/w_imi_tar21.mdl", 100000},
	{"HK 416", "m9k_m416", "models/weapons/w_hk_416.mdl", 120000},
	{"M4A1 Iron", "m9k_m4a1", "models/weapons/w_m4a1_iron.mdl", 120000},
	{"AK-47", "m9k_ak47", "models/weapons/w_ak47_m9k.mdl", 80000},
	-- Snipers
	{"Intervention", "m9k_intervention", "models/weapons/w_snip_int.mdl", 110000},
	{"AI AW50", "m9k_aw50", "models/weapons/w_acc_int_aw50.mdl", 130000},
	{"Remington 7615P", "m9k_remington7615p", "models/weapons/w_remington_7615p.mdl", 90000},
	-- Shotguns
	{"Mossberg 590", "m9k_mossberg590", "models/weapons/w_mossberg_590.mdl", 115000},
	{"Winchester 87", "m9k_1887winchester", "models/weapons/w_winchester_1887.mdl", 125000},
	{"Benelli M3", "m9k_m3", "models/weapons/w_benelli_m3.mdl", 150000},
}
createShipments(trafiWeps, {TEAM_TRAFIQUANT})

-- Autres

local allSellers = {TEAM_ARMURIER, TEAM_TRAFIQUANT, TEAM_QUINCAILLER}

DarkRP.createShipment("Kevlar Leger", {
	model = "models/combine_vests/bogvest.mdl",
	entity = "light kevlar armor",
	price = 20000,
	amount = 1,
	allowed = allSellers
})

DarkRP.createShipment("Kevlar moyen", {
	model = "models/combine_vests/bogvest.mdl",
	entity = "medium kevlar armor",
	price = 40000,
	amount = 1,
	allowed = allSellers
})

DarkRP.createShipment("Lockpick", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "lockpick",
	price = 10000,
	amount = 1,
	allowed = allSellers
})

DarkRP.createShipment("KeyPad Cracker", {
	model = "models/weapons/w_c4.mdl",
	entity = "keypad_cracker",
	price = 10000,
	amount = 1,
	allowed = allSellers
})

--[[-------------------------------------------------------------------------
Gendarmerie
---------------------------------------------------------------------------]]
DarkRP.createShipment("Kevlar Gendarme", {
	model = "models/props_c17/suitcase_passenger_physics.mdl",
	entity = "gen_kevlar",
	price = 1000,
	amount = 1,
	allowed = {TEAM_GENDARME, TEAM_AGN, TEAM_BRI, TEAM_MGN, TEAM_SDR, TEAM_OFFICIER, TEAM_GENGEN, TEAM_MARECHAL}
})

DarkRP.createShipment("Paquetage", {
	model = "models/props/de_prodigy/ammo_can_02.mdl",
	entity = "gign_package",
	price = 5000,
	amount = 1,
	allowed = {TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_INGEGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_OSUGIGN, TEAM_GIGNGENERAL}
})

-- AGN
local agnWeps = {
	-- Pistols
	{"Glock 18", "m9k_glock", "models/weapons/w_dmg_glock.mdl"},
	{"SIG Sauer P229R", "m9k_sig_p229r", "models/weapons/w_sig_229r.mdl"},
	{"HK USP", "m9k_usp", "models/weapons/w_pist_fokkususp.mdl"},
	{"M92 Beretta", "m9k_m92beretta", "models/weapons/w_beretta_m92.mdl"},
	-- Rifles
	{"HK 416", "m9k_m416", "models/weapons/w_hk_416.mdl"},
	{"M4A1 Iron", "m9k_m4a1", "models/weapons/w_m4a1_iron.mdl"},
	{"TAR-21", "m9k_tar21", "models/weapons/w_imi_tar21.mdl"},
	{"MP5SD", "m9k_mp5sd", "models/weapons/w_hk_mp5sd.mdl"},
	{"MP9", "m9k_mp9", "models/weapons/w_brugger_thomet_mp9.mdl"},
	{"HK MP5", "m9k_mp5", "models/weapons/w_hk_mp5.mdl"},
	{"HK UMP45", "m9k_ump45", "models/weapons/w_hk_ump45.mdl"},
	-- Shotguns
	{"Mossberg 590", "m9k_mossberg590", "models/weapons/w_mossberg_590.mdl"},
	{"Benelli M3", "m9k_m3", "models/weapons/w_benelli_m3.mdl"},
	{"Remington 870", "m9k_remington870", "models/weapons/w_remington_870_tact.mdl"}
}

local agnTbl = {TEAM_AGN, TEAM_OFFICIER, TEAM_GENGEN}

for i = 1, #agnWeps do
	DarkRP.createShipment("[AGN] " .. agnWeps[i][1], {
		model = agnWeps[i][3],
		entity = agnWeps[i][2],
		price = 100,
		amount = 1,
		allowed = agnTbl
	})
end

--[[-------------------------------------------------------------------------
Armes VIP
---------------------------------------------------------------------------]]
local vipRanks = {
	"superadmin",
	"users",
	"chef serveur",
	"admin",
	"moderateur",
	"moderateur test",
	"helpeur",
	"helpeur test",
	"VIPDiamant",
	"VIPPlatinium",
	"VIPPrenium",
	"VIP+",
	"VIP"
}

local function getKeysTable(tbl)
	local kv = {}

	for i = 1, #tbl do
		kv[tbl[i]] = true
	end

	return kv
end

local vipWeapons = {
	[1] = {	-- VIP
		{"Luger", "wf_wpn_pt41", "models/weapons/pistols/pt41/worldmodel.mdl"},

		{"Baïonnette | Ultraviolet", "csgo_bayonet_ultraviolet", "models/weapons/w_csgo_bayonet.mdl"}
	},
	[2] = {	-- VIP+
		{"SIG Sauer P226", "wf_wpn_pt14", "models/weapons/pistols/pt14/worldmodel.mdl"},
		{"Icebreaker SIG Sauer P226", "wf_wpn_pt14_ice01", "models/weapons/pistols/pt14/icebreaker/worldmodel.mdl"},

		{"Baïonnette | Autotronic", "csgo_bayonet_autotronic", "models/weapons/w_csgo_bayonet.mdl"},
		{"Karambit | Blue Steel", "csgo_karambit_bluesteel", "models/weapons/w_csgo_karambit.mdl"}
	},
	[3] = {	-- VIPPrenium
		{"Earth Shaker SIG Sauer P226", "wf_wpn_pt14_lava01", "models/weapons/pistols/pt14/magma/worldmodel.mdl"},
		{"H&K MP5", "wf_wpn_smg04", "models/weapons/engineer/smg04/worldmodel.mdl"},
		{"SCAR-L PDW", "wf_wpn_smg31", "models/weapons/engineer/smg31/worldmodel.mdl"},
		{"CZ Scorpion Evo3 A1", "wf_wpn_smg38", "models/weapons/engineer/smg38/worldmodel.mdl"},

		{"Papillon | Fade", "csgo_butterfly_fade", "models/weapons/w_csgo_butterfly.mdl"},
		{"Fauchon | Crimson Webs", "csgo_falchion_crimsonwebs", "models/weapons/w_csgo_falchion.mdl"}
	},
	[4] = {	-- VIPPlatinium
		{"AN-94 N", "m9k_an94n", "models/weapons/w_rif_an_94.mdl"},
		{"M249 LMG", "m9k_m249lmg", "models/weapons/w_m249_machine_gun.mdl"},
		{"Striker 12", "m9k_striker12", "models/weapons/w_striker_12g.mdl"},
		{"Barret M98B", "m9k_m98b", "models/weapons/w_barrett_m98b.mdl"},
		{"M4A1", "wf_wpn_ar02", "models/weapons/rifleman/ar02/worldmodel.mdl"},
		{"Anubis AK-103", "wf_wpn_ar04_afro01", "models/weapons/rifleman/ar04/anubis/worldmodel.mdl"},
		{"AK-103 Shiny Metal Set", "wf_wpn_ar04_camo05", "models/weapons/rifleman/ar04/sms/worldmodel.mdl"},
		{"Absolute AK Alpha", "wf_wpn_ar29_set10", "models/weapons/rifleman/ar29/absolute/worldmodel.mdl"},
		{"SCAR-L PDW World Tournament", "wf_wpn_smg31_ec02", "models/weapons/engineer/smg31/tournament/worldmodel.mdl"},
		{"Earth Shaker SCAR-L PDW", "wf_wpn_smg31_lava01", "models/weapons/engineer/smg31/magma/worldmodel.mdl"},
		{"Syndicate KRISS Super V Custom", "wf_wpn_smg44_bp05", "models/weapons/engineer/smg44/syndicate/worldmodel.mdl"},
		{"K.I.W.I. KRISS Super V Custom", "wf_wpn_smg44_set12", "models/weapons/engineer/smg44/kiwi/worldmodel.mdl"},
		{"Black Shark Steyr Scout", "wf_wpn_sr34_zsd02", "models/weapons/sniper/sr34/ck/worldmodel.mdl"},

		{"Papillon | Tiger Tooth", "csgo_butterfly_tiger", "models/weapons/w_csgo_butterfly.mdl"},
		{"Flip | Marble Fade", "csgo_flip_marblefade", "models/weapons/w_csgo_flip.mdl"},
		{"Karambit | Lore", "csgo_karambit_lore", "models/weapons/w_csgo_karambit.mdl"},
		{"Baïonnette M9 | Gamma Doppler", "csgo_m9_gamma_doppler", "models/weapons/w_csgo_m9.mdl"},
		{"Stiletto", "csgo_stiletto", "models/weapons/horizon/w_csgo_stiletto.mdl"}
	},
	[5] = {	-- VIPDiamant
		{"AK-103 Evil Santa", "wf_wpn_ar04_xmas02", "models/weapons/rifleman/ar04/santa/worldmodel.mdl"},
		{"Syndicate AK Alpha", "wf_wpn_ar29_bp05", "models/weapons/rifleman/ar29/syndicate/worldmodel.mdl"},
		{"AK Alpha Desert", "wf_wpn_ar29_desert01", "models/weapons/rifleman/ar29/desert/worldmodel.mdl"},
		{"Gold SIG Sauer P226", "wf_wpn_pt14_gold01", "models/weapons/pistols/pt14/gold/worldmodel.mdl"},
		{"Gold SCAR-L PDW", "wf_wpn_smg31_gold01", "models/weapons/engineer/smg31/gold/worldmodel.mdl"},
		{"Gold CZ Scorpion Evo3 A1", "wf_wpn_smg38_gold01", "models/weapons/engineer/smg38/gold/worldmodel.mdl"},
		{"Dragunov SR Shiny Metal Set", "wf_wpn_sr02_camo05", "models/weapons/sniper/sr02/sms/worldmodel.mdl"},
		{"Gold Steyr Scout", "wf_wpn_sr34_gold01", "models/weapons/sniper/sr34/gold/worldmodel.mdl"},
		{"K.I.W.I. Gepard GM6 Lynx", "wf_wpn_sr43_set12", "models/weapons/sniper/sr43/kiwi/worldmodel.mdl"},

		{"Baïonnette | Forest DDPAT", "csgo_bayonet_ddpat", "models/weapons/w_csgo_bayonet.mdl"},
		{"Bowie | Ultraviolet", "csgo_bowie_ultraviolet", "models/weapons/w_csgo_bowie.mdl"},
		{"Dagues | Gamma Doppler", "csgo_daggers_gamma_doppler", "models/weapons/w_csgo_push.mdl"},
		{"Dagues | Slaughter", "csgo_daggers_slaughter", "models/weapons/w_csgo_push.mdl"},
		{"Gut | Autotronic", "csgo_gut_autotronic", "models/weapons/w_csgo_gut.mdl"},
		{"Chasseur | Night", "csgo_huntsman_night", "models/weapons/w_csgo_tactical.mdl"},
		{"Karambit | Gamma Doppler", "csgo_karambit_gamma_doppler", "models/weapons/w_csgo_karambit.mdl"},
		{"Baïonnette M9 | Fade", "csgo_m9_fade", "models/weapons/w_csgo_m9.mdl"},
		{"Baïonnette M9 | Lore", "csgo_m9_lore", "models/weapons/w_csgo_m9.mdl"},
		{"Ursus", "csgo_ursus", "models/weapons/horizon/w_csgo_ursus.mdl"}
	}
}

for i, weps in ipairs(vipWeapons) do
	local keysTable = getKeysTable(vipRanks)

	local customCheck = function(ply)
		return keysTable[ply:GetUserGroup()] or false
	end

	for j = 1, #weps do
		local weapon = weps[j]

		local price = weapon[2]:sub(1, 4) == "csgo" and 10000 or 40000

		DarkRP.createShipment(weapon[1], {
			model = weapon[3],
			entity = weapon[2],
			price = price,
			amount = 1,
			separate = true,
			pricesep = price,
			noship = true,
			customCheck = customCheck
		})
	end

	table.remove(vipRanks)
end
