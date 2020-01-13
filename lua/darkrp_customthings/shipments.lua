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
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields

Add shipments and guns under the following line:
---------------------------------------------------------------------------]]

-- Copyright © LiveYourGame, 2020

--[[-------------------------------------------------------------------------
Quincailler
---------------------------------------------------------------------------]]

-- Couteaux
DarkRP.createShipment("Shadow Daggers | Tigger Tooth", {
	model = "models/weapons/w_csgo_push.mdl",
	entity = "csgo_daggers_tiger",
	amount = 1,
	price = 30000,
	separate = false,
	pricesep = 20000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("M9 Bayonet | Fade", {
	model = "models/weapons/w_csgo_m9.mdl",
	entity = "csgo_m9_fade",
	amount = 1,
	price = 40000,
	separate = false,
	pricesep = 20000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Butterfly | Marble Fade", {
	model = "models/weapons/w_csgo_butterfly.mdl",
	entity = "csgo_butterfly_marblefade",
	amount = 1,
	price = 35000,
	separate = false,
	pricesep = 20000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Karambit | Autotronic", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit_autotronic",
	amount = 1,
	price = 30000,
	separate = false,
	pricesep = 20000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Bayonet", {
	model = "models/weapons/w_csgo_bayonet.mdl",
	entity = "csgo_bayonet",
	price = 15000,
	amount = 1,
	separate = false,
	pricesep = 5000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Bowie", {
	model = "models/weapons/w_csgo_bowie.mdl",
	entity = "csgo_bowie",
	price = 20000,
	amount = 1,
	separate = false,
	pricesep = 7000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Butterfly", {
	model = "models/weapons/w_csgo_butterfly.mdl",
	entity = "csgo_butterfly_bright",
	price = 8000,
	amount = 1,
	separate = false,
	pricesep = 3000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Falchion", {
	model = "models/weapons/w_csgo_falchion.mdl",
	entity = "csgo_falchion",
	price = 18000,
	amount = 1,
	separate = false,
	pricesep = 6000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Flip", {
	model = "models/weapons/w_csgo_flip.mdl",
	entity = "csgo_flip",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 3500,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Gut", {
	model = "models/weapons/w_csgo_gut.mdl",
	entity = "csgo_gut",
	price = 13000,
	amount = 1,
	separate = false,
	pricesep = 7500,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Huntsman", {
	model = "models/weapons/w_csgo_tactical.mdl",
	entity = "csgo_huntsman",
	price = 30000,
	amount = 1,
	separate = false,
	pricesep = 75000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("Karambit", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit",
	price = 200000,
	amount = 1,
	separate = false,
	pricesep = 75000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

DarkRP.createShipment("M9 Bayonet", {
	model = "models/weapons/w_csgo_m9.mdl",
	entity = "csgo_m9",
	price = 200000,
	amount = 1,
	separate = false,
	pricesep = 75000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

-- Autres
DarkRP.createShipment("Pied de biche pour ATM", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "lyg_crowbar",
	price = 45000,
	amount = 1,
	separate = false,
	pricesep = 16000,
	noship = false,
	allowed = {TEAM_QUINCAILLER}
})

--[[-------------------------------------------------------------------------
Armurier
---------------------------------------------------------------------------]]

-- Snipers
DarkRP.createShipment("AI AW50", {
	model = "models/weapons/w_acc_int_aw50.mdl",
	entity = "m9k_aw50",
	price = 120000,
	amount = 1,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

-- Pistolets
DarkRP.createShipment("HK45", {
	model = "models/weapons/w_hk45c.mdl",
	entity = "m9k_hk45",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("Glock", {
	model = "models/weapons/w_dmg_glock.mdl",
	entity = "m9k_glock",
	price = 20000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("USP", {
	model = "models/weapons/w_pist_fokkususp.mdl",
	entity = "m9k_usp",
	price = 20000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("Berreta", {
	model = "models/weapons/w_beretta_m92.mdl",
	entity = "m9k_m92beretta",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("P229r", {
	model = "models/weapons/w_sig_229r.mdl",
	entity = "m9k_sig_p229r",
	price = 20000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("Colt 1911", {
	model = "models/weapons/s_dmgf_co1911.mdl",
	entity = "m9k_colt1911",
	price = 15000,
	amount = 1,
	separate = false,
	pricesep = 16000,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("Raging Bull", {
	model = "models/weapons/w_taurus_raging_bull.mdl",
	entity = "m9k_ragingbull",
	price = 25000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("M29 Satan", {
	model = "models/weapons/w_m29_satan.mdl",
	entity = "m9k_m29satan",
	price = 15000,
	amount = 1,
	separate = false,
	pricesep = 16000,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("TEC-9", {
	model = "models/weapons/w_intratec_tec9.mdl",
	entity = "m9k_tec9",
	price = 45000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

-- Fusil d'assaut
DarkRP.createShipment("AK-74", {
	model = "models/weapons/w_tct_ak47.mdl",
	entity = "m9k_ak74",
	price = 85000,
	amount = 1,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("L85", {
	model = "models/weapons/w_l85a2.mdl",
	entity = "m9k_l85",
	price = 120000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("MP9", {
	model = "models/weapons/w_brugger_thomet_mp9.mdl",
	entity = "m9k_mp9",
	price = 45000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("Tommy Gun", {
	model = "models/weapons/w_tommy_gun.mdl",
	entity = "m9k_thompson",
	price = 85000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("MP5", {
	model = "models/weapons/w_hk_mp5.mdl",
	entity = "m9k_mp5",
	price = 45000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("SCAR", {
	model = "models/weapons/w_fn_scar_h.mdl",
	entity = "m9k_scar",
	price = 120000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("G36C", {
	model = "models/weapons/w_hk_g36c.mdl",
	entity = "m9k_g36",
	price = 85000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("M4A1", {
	model = "models/weapons/w_m4a1_iron.mdl",
	entity = "m9k_m4a1",
	price = 120000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("HK416", {
	model = "models/weapons/w_hk_416.mdl",
	entity = "m9k_m416",
	price = 120000,
	amount = 1,
	separate = false,
	pricesep = 15000,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("KAC PDW", {
	model = "models/weapons/w_kac_pdw.mdl",
	entity = "m9k_kac_pdw",
	price = 45000,
	amount = 1,
	separate = false,
	pricesep = 11000,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("FN FAL", {
	model = "models/weapons/w_fn_fal.mdl",
	entity = "m9k_fal",
	price = 85000,
	amount = 1,
	separate = false,
	pricesep = 14000,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

-- Fulis à pompe
DarkRP.createShipment("M 14", {
	model = "models/weapons/w_snip_m14sp.mdl",
	entity = "m9k_m14sp",
	price = 85000,
	amount = 1,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("G3 A3", {
	model = "models/weapons/w_hk_g3.mdl",
	entity = "m9k_g3a3",
	price = 90000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("Mossberg", {
	model = "models/weapons/w_mossberg_590.mdl",
	entity = "m9k_mossberg590",
	price = 120000,
	amount = 1,
	separate = false,
	pricesep = 14000,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

DarkRP.createShipment("Remington", {
	model = "models/weapons/w_remington_7615p.mdl",
	entity = "m9k_remington7615p",
	price = 120000,
	amount = 1,
	separate = false,
	pricesep = 31000,
	noship = false,
	allowed = {TEAM_TRAFIQUANT}
})

-- SMG
DarkRP.createShipment("Uzi", {
	model = "models/weapons/w_uzi_imi.mdl",
	entity = "m9k_uzi",
	price = 45000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("P90", {
	model = "models/weapons/w_fn_p90.mdl",
	entity = "m9k_smgp90",
	price = 45000,
	amount = 1,
	separate = false,
	pricesep = 9500,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

DarkRP.createShipment("Vector", {
	model = "models/weapons/w_kriss_vector.mdl",
	entity = "m9k_vector",
	price = 45000,
	amount = 1,
	separate = false,
	pricesep = 10000,
	noship = false,
	allowed = {TEAM_ARMURIER}
})

-- Autres
DarkRP.createShipment("Kevlar Leger", {
	model = "models/combine_vests/bogvest.mdl",
	entity = "light kevlar armor",
	price = 20000,
	amount = 1,
	separate = false,
	pricesep = 17500,
	noship = false,
	allowed = {TEAM_ARMURIER, TEAM_TRAFIQUANT, TEAM_QUINCAILLER}
})

DarkRP.createShipment("Lockpick", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "lockpick",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 5000,
	noship = false,
	allowed = {TEAM_ARMURIER, TEAM_QUINCAILLER}
})

DarkRP.createShipment("KeyPad Cracker", {
	model = "models/weapons/w_c4.mdl",
	entity = "keypad_cracker",
	price = 10000,
	amount = 1,
	seperate = false,
	pricesep = 2000,
	noship = false,
	allowed = {TEAM_ARMURIER, TEAM_QUINCAILLER}
})

--[[-------------------------------------------------------------------------
Gendarmerie
---------------------------------------------------------------------------]]

DarkRP.createShipment("Kevlar moyen", {
	model = "models/combine_vests/bogvest.mdl",
	entity = "medium kevlar armor",
	price = 40000,
	amount = 1,
	separate = false,
	pricesep = 17500,
	noship = false,
	allowed = {TEAM_ARMURIER, TEAM_TRAFIQUANT, TEAM_QUINCAILLER, TEAM_AGS}
})

DarkRP.createShipment("Kevlar Gendarme", {
	model = "models/props_c17/suitcase_passenger_physics.mdl",
	entity = "copkelar_medium",
	price = 1000,
	amount = 1,
	separate = false,
	pricesep = 17500,
	noship = false,
	allowed = {TEAM_GENDARME, TEAM_AGN, TEAM_MGN, TEAM_BRI, TEAM_SDR, TEAM_OFFICIER, TEAM_MARECHAL, TEAM_GENGEN}
})

-- AGN
DarkRP.createShipment("[AGN] Beretta M9", {
	model = "models/weapons/w_beretta_m92.mdl",
	entity = "m9k_m92beretta",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] HK USP", {
	model = "models/weapons/w_pist_fokkususp.mdl",
	entity = "m9k_usp",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] SIG Sauer P229R", {
	model = "models/weapons/w_sig_229r.mdl",
	entity = "m9k_sig_p229r",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] Glock 18", {
	model = "models/weapons/w_dmg_glock.mdl",
	entity = "m9k_glock",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] Desert Eagle", {
	model = "models/weapons/w_tcom_deagle.mdl",
	entity = "m9k_deagle",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] HK MP5", {
	model = "models/weapons/w_hk_mp5.mdl",
	entity = "m9k_mp5",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] MP9", {
	model = "models/weapons/w_brugger_thomet_mp9.mdl",
	entity = "m9k_mp9",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] MP5 SD", {
	model = "models/weapons/w_hk_mp5sd.mdl",
	entity = "m9k_mp5sd",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] HK UMP45", {
	model = "models/weapons/w_hk_ump45.mdl",
	entity = "m9k_ump45",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] Tar-21", {
	model = "models/weapons/w_imi_tar21.mdl",
	entity = "m9k_tar21",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] M4A1", {
	model = "models/weapons/w_m4a1_iron.mdl",
	entity = "m9k_m4a1",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] HK416", {
	model = "models/weapons/w_hk_416.mdl",
	entity = "m9k_m416",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] HK416", {
	model = "models/weapons/w_hk_416.mdl",
	entity = "m9k_m416",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] Remington", {
	model = "models/weapons/w_remington_870_tact.mdl",
	entity = "m9k_remington870",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] Benelli", {
	model = "models/weapons/w_benelli_m3.mdl",
	entity = "m9k_m3",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

DarkRP.createShipment("[AGN] Mossberg", {
	model = "models/weapons/w_mossberg_590.mdl",
	entity = "m9k_mossberg590",
	price = 100,
	amount = 1,
	seperate = false,
	pricesep = 155500,
	noship = false,
	allowed = {TEAM_AGN}
})

-- GIGN
DarkRP.createShipment("MP5 SD", {
	model = "models/weapons/w_hk_mp5sd.mdl",
	entity = "m9k_mp5sd",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 17500,
	noship = false,
	allowed = {TEAM_AGS}
})

DarkRP.createShipment("HK416 GIGN", {
	model = "models/weapons/w_hk_416.mdl",
	entity = "m9k_m416",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 15000,
	noship = false,
	allowed = {TEAM_GIGNGENERAL}
})

DarkRP.createShipment("Bouclier", {
	model = "models/drover/shield.mdl",
	entity = "weapon_policeshield",
	price = 500,
	amount = 1,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_OSUGIGN, TEAM_GIGNGENERAL}
})

DarkRP.createShipment("C4", {
	model = "models/weapons/w_c4.mdl",
	entity = "weapon_sh_doorcharge",
	price = 1000,
	amount = 1,
	separate = false,
	pricesep = 1000,
	noship = false,
	allowed = {TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_INGEGIGN, TEAM_OSUGIGN, TEAM_GIGNGENERAL}
})

DarkRP.createShipment("Herse-Ammo", {
	model = "models/novacars/spikestrip/spikestrip.mdl",
	entity = "nova_spikestrip_ammo",
	price = 10000,
	amount = 4,
	separate = false,
	pricesep = 10000,
	noship = false,
	allowed = {TEAM_GIGNGENERAL, TEAM_GENGEN}
})

DarkRP.createShipment("USAS", {
	model = "models/weapons/w_usas_12.mdl",
	entity = "m9k_usas",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 10000,
	noship = false,
	allowed = {TEAM_GIGNGENERAL}
})

DarkRP.createShipment("Kevlar Lourd", {
	model = "models/combine_vests/elitevest.mdl",
	entity = "heavy kevlar armor",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 10000,
	noship = false,
	allowed = {TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_INGEGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_OSUGIGN, TEAM_GIGNGENERAL, TEAM_GENGEN, TEAM_MARECHAL}
})

DarkRP.createShipment("Flash", {
	model = "models/weapons/w_eq_flashbang.mdl",
	entity = "ptp_weapon_flash",
	price = 500,
	amount = 1,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_INGEGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_OSUGIGN, TEAM_GIGNGENERAL}
})

DarkRP.createShipment("Smoke", {
	model = "models/weapons/w_eq_smokegrenade.mdl",
	entity = "ptp_weapon_smoke",
	price = 500,
	amount = 1,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_INGEGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_OSUGIGN, TEAM_GIGNGENERAL}
})

DarkRP.createShipment("Grenade", {
	model = "models/weapons/w_eq_fraggrenade.mdl",
	entity = "ptp_weapon_grenade",
	price = 1000,
	amount = 1,
	separate = false,
	pricesep = 1000,
	noship = false,
	allowed = {TEAM_INGEGIGN, TEAM_OSUGIGN, TEAM_GIGNGENERAL}
})

DarkRP.createShipment("Ithacam", {
	model = "models/weapons/w_ithaca_m37.mdl",
	entity = "m9k_ithacam37",
	price = 10000,
	amount = 1,
	separate = false,
	pricesep = 10000,
	noship = false,
	allowed = {TEAM_MARECHAL}
})

DarkRP.createShipment("Sac à bijoux", {
	model = "models/sterling/ajr_backpack.mdl",
	entity = "jewelry_robbery_bag",
	price = 10000,
	amount = 1,
	separate = false,
	allowed = {TEAM_CGANGSTER, TEAM_GANGSTER, TEAM_GANGSTERV, TEAM_CCARTEL, TEAM_CARTEL, TEAM_CARTELV, TEAM_CYAKUSA, TEAM_YAKUSA, TEAM_YAKUSAV}
})

--[[-------------------------------------------------------------------------
Armes VIP
---------------------------------------------------------------------------]]

-- ARMES --
local diamond = {}

diamond.Ranks = {
	["superadmin"] = true,
	["users"] = true,
	["chef serveur"] = true,
	["admin"] = true,
	["moderateur"] = true,
	["moderateur test"] = true,
	["helpeur"] = true,
	["helpeur test"] = true,
	["VIPDiamant"] = true
}

function diamond.check(ply)
	return diamond.Ranks[ply:GetUserGroup()] or false
end

diamond.weps = {
	{"AK-103 Evil Santa", "wf_wpn_ar04_xmas02", "models/weapons/rifleman/ar04/santa/worldmodel.mdl"},
	{"Syndicate AK Alpha", "wf_wpn_ar29_bp05", "models/weapons/rifleman/ar29/syndicate/worldmodel.mdl"},
	{"Gold AK Alpha", "wf_wpn_ar29_gold01", "models/weapons/rifleman/ar29/gold/worldmodel.mdl"},
	{"Gold SIG Sauer P226", "wf_wpn_pt14_gold01", "models/weapons/pistols/pt14/gold/worldmodel.mdl"},
	{"Gold SCAR-L PDW", "wf_wpn_smg31_gold01", "models/weapons/engineer/smg31/gold/worldmodel.mdl"},
	{"Gold CZ Scorpion Evo3 A1", "wf_wpn_smg38_gold01", "models/weapons/engineer/smg38/gold/worldmodel.mdl"},
	{"Dragunov SR Shiny Metal Set", "wf_wpn_sr02_camo05", "models/weapons/sniper/sr02/sms/worldmodel.mdl"},
	{"Gold Steyr Scout", "wf_wpn_sr34_gold01", "models/weapons/sniper/sr34/gold/worldmodel.mdl"},
	{"K.I.W.I. Gepard GM6 Lynx", "wf_wpn_sr43_set12", "models/weapons/sniper/sr43/kiwi/worldmodel.mdl"}
}

for i = 1, #diamond.weps do
	local diamondWep = diamond.weps[i]
	DarkRP.createShipment(diamondWep[1], {
		model = diamondWep[3],
		entity = diamondWep[2],
		price = 40000,
		amount = 1,
		separate = true,
		pricesep = 40000,
		noship = true,
		customCheck = diamond.check
	})
end

local platinium = {}

platinium.Ranks = {
	["superadmin"] = true,
	["users"] = true,
	["chef serveur"] = true,
	["admin"] = true,
	["moderateur"] = true,
	["moderateur test"] = true,
	["helpeur"] = true,
	["helpeur test"] = true,
	["VIPDiamant"] = true,
	["VIPPlatinium"] = true
}

function platinium.check(ply)
	return platinium.Ranks[ply:GetUserGroup()] or false
end

platinium.weps = {
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
	{"Black Shark Steyr Scout", "wf_wpn_sr34_zsd02", "models/weapons/sniper/sr34/ck/worldmodel.mdl"}
}

for i = 1, #platinium.weps do
	local platiniumWep = platinium.weps[i]
	DarkRP.createShipment(platiniumWep[1], {
		model = platiniumWep[3],
		entity = platiniumWep[2],
		price = 40000,
		amount = 1,
		separate = true,
		pricesep = 40000,
		noship = true,
		customCheck = platinium.check
	})
end

local premium = {}

premium.Ranks = {
	["superadmin"] = true,
	["users"] = true,
	["chef serveur"] = true,
	["admin"] = true,
	["moderateur"] = true,
	["moderateur test"] = true,
	["helpeur"] = true,
	["helpeur test"] = true,
	["VIPDiamant"] = true,
	["VIPPlatinium"] = true,
	["VIPPrenium"] = true
}

function premium.check(ply)
	return premium.Ranks[ply:GetUserGroup()] or false
end

premium.weps = {
	{"Earth Shaker SIG Sauer P226", "wf_wpn_pt14_lava01", "models/weapons/pistols/pt14/magma/worldmodel.mdl"},
	{"H&K MP5 Winter Camo", "wf_wpn_smg04_camo02", "models/weapons/engineer/smg04/winter/worldmodel.mdl"},
	{"SCAR-L PDW", "wf_wpn_smg31", "models/weapons/engineer/smg31/worldmodel.mdl"},
	{"CZ Scorpion Evo3 A1", "wf_wpn_smg38", "models/weapons/engineer/smg38/worldmodel.mdl"}
}

for i = 1, #premium.weps do
	local premiumWep = premium.weps[i]
	DarkRP.createShipment(premiumWep[1], {
		model = premiumWep[3],
		entity = premiumWep[2],
		price = 40000,
		amount = 1,
		separate = true,
		pricesep = 40000,
		noship = true,
		customCheck = premium.check
	})
end

local plus = {}

plus.Ranks = {
	["superadmin"] = true,
	["users"] = true,
	["chef serveur"] = true,
	["admin"] = true,
	["moderateur"] = true,
	["moderateur test"] = true,
	["helpeur"] = true,
	["helpeur test"] = true,
	["VIPDiamant"] = true,
	["VIPPlatinium"] = true,
	["VIPPrenium"] = true,
	["VIP+"] = true
}

function plus.check(ply)
	return plus.Ranks[ply:GetUserGroup()] or false
end

plus.weps = {
	{"SIG Sauer P226", "wf_wpn_pt14", "models/weapons/pistols/pt14/worldmodel.mdl"},
	{"Icebreaker SIG Sauer P226", "wf_wpn_pt14_ice01", "models/weapons/pistols/pt14/icebreaker/worldmodel.mdl"}
}

for i = 1, #plus.weps do
	local plusWep = plus.weps[i]
	DarkRP.createShipment(plusWep[1], {
		model = plusWep[3],
		entity = plusWep[2],
		price = 40000,
		amount = 1,
		separate = true,
		pricesep = 40000,
		noship = true,
		customCheck = plus.check
	})
end

local vip = {}

vip.Ranks = {
	["superadmin"] = true,
	["users"] = true,
	["chef serveur"] = true,
	["admin"] = true,
	["moderateur"] = true,
	["moderateur test"] = true,
	["helpeur"] = true,
	["helpeur test"] = true,
	["VIPDiamant"] = true,
	["VIPPlatinium"] = true,
	["VIPPrenium"] = true,
	["VIP+"] = true
}

function vip.check(ply)
	return vip.Ranks[ply:GetUserGroup()] or false
end

DarkRP.createShipment("Luger", {
	model = "models/weapons/pistols/pt41/worldmodel.mdl",
	entity = "wf_wpn_pt41",
	price = 40000,
	amount = 1,
	separate = true,
	pricesep = 40000,
	noship = true,
	customCheck = vip.check
})

-- KNIFES --
DarkRP.createShipment("Csgo M9 Lore", {
	model = "models/weapons/w_csgo_m9.mdl",
	entity = "csgo_m9_lore",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Karambit Gamma Doppler", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit_gamma_doppler",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Gut Lore", {
	model = "models/weapons/w_csgo_gut.mdl",
	entity = "csgo_gut_lore",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Gut Gamma Doppler", {
	model = "models/weapons/w_csgo_gut.mdl",
	entity = "csgo_gut_gamma_doppler",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Flip Lore", {
	model = "models/weapons/w_csgo_flip.mdl",
	entity = "csgo_flip_lore",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Flip Gamma Doppler", {
	model = "models/weapons/w_csgo_flip.mdl",
	entity = "csgo_flip_gamma_doppler",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Bayonet Lore", {
	model = "models/weapons/w_csgo_bayonet.mdl",
	entity = "csgo_bayonet_lore",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Bayonet Gamma Doppler", {
	model = "models/weapons/w_csgo_bayonet.mdl",
	entity = "csgo_bayonet_gamma_doppler",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Karambit Ultraviolet", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit_ultraviolet",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "VIPPrenium", "VIP", "VIP+", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP "
})

DarkRP.createShipment("Csgo Bayonet Ultraviolet", {
	model = "models/weapons/w_csgo_bayonet.mdl",
	entity = "csgo_bayonet_ultraviolet",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "VIPPrenium", "VIP", "VIP+", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP "
})

DarkRP.createShipment("Csgo Bowie Tiger", {
	model = "models/weapons/w_csgo_bowie.mdl",
	entity = "csgo_bowie_tiger",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "VIPPrenium", "VIP+", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP "
})

DarkRP.createShipment("Csgo Bayonet Autotronic", {
	model = "models/weapons/w_csgo_bayonet.mdl",
	entity = "csgo_bayonet_autotronic",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "VIPPrenium", "VIP+", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP "
})

DarkRP.createShipment("Csgo Papillon Fade", {
	model = "models/weapons/w_csgo_butterfly.mdl",
	entity = "csgo_butterfly_fade",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPrenium", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Falchion Fade", {
	model = "models/weapons/w_csgo_falchion.mdl",
	entity = "csgo_falchion_fade",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPrenium", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Flip Damascus", {
	model = "models/weapons/w_csgo_flip.mdl",
	entity = "csgo_flip_damascus",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Flip Damascus", {
	model = "models/weapons/w_csgo_flip.mdl",
	entity = "csgo_flip_damascus",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIP+", "VIPPrenium", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Falchion Ultraviolet", {
	model = "models/weapons/w_csgo_falchion.mdl",
	entity = "csgo_falchion_ultraviolet",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Karambit Ddpat", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit_ddpat",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Karambit Ddpat", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit_ddpat",
	amount = 1,
	price = 50000,
	separate = true,
	pricesep = 50000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIP+"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Karambit Freehand", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit_freehand",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Falchion Gamma Doppler", {
	model = "models/weapons/w_csgo_falchion.mdl",
	entity = "csgo_falchion_gamma_doppler",
	amount = 1,
	price = 10000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo Karambit Lore", {
	model = "models/weapons/w_csgo_karambit.mdl",
	entity = "csgo_karambit_lore",
	amount = 1,
	price = 100000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})

DarkRP.createShipment("Csgo M9 Gamma", {
	model = "models/weapons/w_csgo_m9.mdl",
	entity = "csgo_m9_gamma_doppler",
	amount = 1,
	price = 100000,
	separate = true,
	pricesep = 10000,
	noship = true,
	customCheck = function(ply) return table.HasValue({"VIPDiamant", "VIPPlatinium", "helpeur", "helpeur test", "superadmin", "admin", "moderateur test", "moderateur"}, ply:GetNWString("usergroup")) end,
	CustomCheckFailMsg = "Armes disponible que pour les VIP Platinum"
})