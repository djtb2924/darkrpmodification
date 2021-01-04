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
Quincailler
---------------------------------------------------------------------------]]
local quincTbl = {TEAM_QUINCAILLER}

-- Restrains
DarkRP.createShipment("Attaches Serflex", {
	model = "models/tobadforyou/flexcuffs_deployed.mdl",
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
	["huntsman"] = 30000,
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
Armurier
---------------------------------------------------------------------------]]
local armuTbl = {TEAM_ARMURIER}
local trafiTbl = {TEAM_TRAFIQUANT}

-- Snipers
DarkRP.createShipment("AI AW50", {
	model = "models/weapons/w_acc_int_aw50.mdl",
	entity = "m9k_aw50",
	price = 120000,
	amount = 1,
	allowed = trafiTbl
})

-- Pistolets
DarkRP.createShipment("HK45", {
	model = "models/weapons/w_hk45c.mdl",
	entity = "m9k_hk45",
	price = 10000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("Glock", {
	model = "models/weapons/w_dmg_glock.mdl",
	entity = "m9k_glock",
	price = 20000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("USP", {
	model = "models/weapons/w_pist_fokkususp.mdl",
	entity = "m9k_usp",
	price = 20000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("Berreta", {
	model = "models/weapons/w_beretta_m92.mdl",
	entity = "m9k_m92beretta",
	price = 10000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("P229r", {
	model = "models/weapons/w_sig_229r.mdl",
	entity = "m9k_sig_p229r",
	price = 20000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("Colt 1911", {
	model = "models/weapons/s_dmgf_co1911.mdl",
	entity = "m9k_colt1911",
	price = 15000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("Raging Bull", {
	model = "models/weapons/w_taurus_raging_bull.mdl",
	entity = "m9k_ragingbull",
	price = 25000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("M29 Satan", {
	model = "models/weapons/w_m29_satan.mdl",
	entity = "m9k_m29satan",
	price = 15000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("TEC-9", {
	model = "models/weapons/w_intratec_tec9.mdl",
	entity = "m9k_tec9",
	price = 45000,
	amount = 1,
	allowed = armuTbl
})

-- Fusil d'assaut
DarkRP.createShipment("AK-74", {
	model = "models/weapons/w_tct_ak47.mdl",
	entity = "m9k_ak74",
	price = 85000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("L85", {
	model = "models/weapons/w_l85a2.mdl",
	entity = "m9k_l85",
	price = 120000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("MP9", {
	model = "models/weapons/w_brugger_thomet_mp9.mdl",
	entity = "m9k_mp9",
	price = 45000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("Tommy Gun", {
	model = "models/weapons/w_tommy_gun.mdl",
	entity = "m9k_thompson",
	price = 85000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("MP5", {
	model = "models/weapons/w_hk_mp5.mdl",
	entity = "m9k_mp5",
	price = 45000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("SCAR", {
	model = "models/weapons/w_fn_scar_h.mdl",
	entity = "m9k_scar",
	price = 120000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("G36C", {
	model = "models/weapons/w_hk_g36c.mdl",
	entity = "m9k_g36",
	price = 85000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("M4A1", {
	model = "models/weapons/w_m4a1_iron.mdl",
	entity = "m9k_m4a1",
	price = 120000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("HK416", {
	model = "models/weapons/w_hk_416.mdl",
	entity = "m9k_m416",
	price = 120000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("KAC PDW", {
	model = "models/weapons/w_kac_pdw.mdl",
	entity = "m9k_kac_pdw",
	price = 45000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("FN FAL", {
	model = "models/weapons/w_fn_fal.mdl",
	entity = "m9k_fal",
	price = 85000,
	amount = 1,
	allowed = trafiTbl
})

-- Fulis à pompe
DarkRP.createShipment("M 14", {
	model = "models/weapons/w_snip_m14sp.mdl",
	entity = "m9k_m14sp",
	price = 85000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("G3 A3", {
	model = "models/weapons/w_hk_g3.mdl",
	entity = "m9k_g3a3",
	price = 90000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("Mossberg", {
	model = "models/weapons/w_mossberg_590.mdl",
	entity = "m9k_mossberg590",
	price = 120000,
	amount = 1,
	allowed = trafiTbl
})

DarkRP.createShipment("Remington", {
	model = "models/weapons/w_remington_7615p.mdl",
	entity = "m9k_remington7615p",
	price = 120000,
	amount = 1,
	allowed = trafiTbl
})

-- SMG
DarkRP.createShipment("Uzi", {
	model = "models/weapons/w_uzi_imi.mdl",
	entity = "m9k_uzi",
	price = 45000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("P90", {
	model = "models/weapons/w_fn_p90.mdl",
	entity = "m9k_smgp90",
	price = 45000,
	amount = 1,
	allowed = armuTbl
})

DarkRP.createShipment("Vector", {
	model = "models/weapons/w_kriss_vector.mdl",
	entity = "m9k_vector",
	price = 45000,
	amount = 1,
	allowed = armuTbl
})

-- Autres
DarkRP.createShipment("Kevlar Leger", {
	model = "models/combine_vests/bogvest.mdl",
	entity = "light kevlar armor",
	price = 20000,
	amount = 1,
	allowed = {TEAM_ARMURIER, TEAM_TRAFIQUANT, TEAM_QUINCAILLER}
})

local armuQuincTbl = {TEAM_ARMURIER, TEAM_QUINCAILLER}

DarkRP.createShipment("Lockpick", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "lockpick",
	price = 10000,
	amount = 1,
	allowed = armuQuincTbl
})

DarkRP.createShipment("KeyPad Cracker", {
	model = "models/weapons/w_c4.mdl",
	entity = "keypad_cracker",
	price = 10000,
	amount = 1,
	allowed = armuQuincTbl
})

DarkRP.createShipment("Kevlar moyen", {
	model = "models/combine_vests/bogvest.mdl",
	entity = "medium kevlar armor",
	price = 40000,
	amount = 1,
	allowed = {TEAM_ARMURIER, TEAM_TRAFIQUANT, TEAM_QUINCAILLER, TEAM_AGS}
})

--[[-------------------------------------------------------------------------
Gendarmerie
---------------------------------------------------------------------------]]
DarkRP.createShipment("Kevlar Gendarme", {
	model = "models/props_c17/suitcase_passenger_physics.mdl",
	entity = "gen_kevlar",
	price = 1000,
	amount = 1,
	allowed = {TEAM_GENDARME, TEAM_AGN, TEAM_MGN, TEAM_BRI, TEAM_SDR, TEAM_OFFICIER, TEAM_GENGEN, TEAM_MARECHAL}
})

-- AGN
local agnTbl = {TEAM_AGN}

DarkRP.createShipment("[AGN] Beretta M9", {
	model = "models/weapons/w_beretta_m92.mdl",
	entity = "m9k_m92beretta",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] HK USP", {
	model = "models/weapons/w_pist_fokkususp.mdl",
	entity = "m9k_usp",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] SIG Sauer P229R", {
	model = "models/weapons/w_sig_229r.mdl",
	entity = "m9k_sig_p229r",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] Glock 18", {
	model = "models/weapons/w_dmg_glock.mdl",
	entity = "m9k_glock",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] Desert Eagle", {
	model = "models/weapons/w_tcom_deagle.mdl",
	entity = "m9k_deagle",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] HK MP5", {
	model = "models/weapons/w_hk_mp5.mdl",
	entity = "m9k_mp5",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] MP9", {
	model = "models/weapons/w_brugger_thomet_mp9.mdl",
	entity = "m9k_mp9",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] MP5 SD", {
	model = "models/weapons/w_hk_mp5sd.mdl",
	entity = "m9k_mp5sd",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] HK UMP45", {
	model = "models/weapons/w_hk_ump45.mdl",
	entity = "m9k_ump45",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] Tar-21", {
	model = "models/weapons/w_imi_tar21.mdl",
	entity = "m9k_tar21",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] M4A1", {
	model = "models/weapons/w_m4a1_iron.mdl",
	entity = "m9k_m4a1",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] HK416", {
	model = "models/weapons/w_hk_416.mdl",
	entity = "m9k_m416",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] HK416", {
	model = "models/weapons/w_hk_416.mdl",
	entity = "m9k_m416",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] Remington", {
	model = "models/weapons/w_remington_870_tact.mdl",
	entity = "m9k_remington870",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] Benelli", {
	model = "models/weapons/w_benelli_m3.mdl",
	entity = "m9k_m3",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

DarkRP.createShipment("[AGN] Mossberg", {
	model = "models/weapons/w_mossberg_590.mdl",
	entity = "m9k_mossberg590",
	price = 100,
	amount = 1,
	allowed = agnTbl
})

-- GIGN
DarkRP.createShipment("MP5 SD", {
	model = "models/weapons/w_hk_mp5sd.mdl",
	entity = "m9k_mp5sd",
	price = 10000,
	amount = 1,
	allowed = {TEAM_AGS}
})

DarkRP.createShipment("Herse-Ammo", {
	model = "models/novacars/spikestrip/spikestrip.mdl",
	entity = "nova_spikestrip_ammo",
	price = 10000,
	amount = 4,
	allowed = {TEAM_GIGNGENERAL, TEAM_GENGEN}
})

DarkRP.createShipment("USAS", {
	model = "models/weapons/w_usas_12.mdl",
	entity = "m9k_usas",
	price = 10000,
	amount = 1,
	allowed = {TEAM_GIGNGENERAL}
})

DarkRP.createShipment("Paquetage", {
	model = "models/props/de_prodigy/ammo_can_02.mdl",
	entity = "gign_package",
	price = 5000,
	amount = 1,
	allowed = {TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_INGEGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_OSUGIGN, TEAM_GIGNGENERAL}
})

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
