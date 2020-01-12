--[[---------------------------------------------------------------------------
Group chats
---------------------------------------------------------------------------
Team chat for when you have a certain job.
e.g. with the default police group chat, police officers, chiefs and mayors can
talk to one another through /g or team chat.

HOW TO MAKE A GROUP CHAT:
Simple method:
GAMEMODE:AddGroupChat(List of team variables separated by comma)

Advanced method:
GAMEMODE:AddGroupChat(a function with ply as argument that returns whether a random player is in one chat group)
This is for people who know how to script Lua.

---------------------------------------------------------------------------]]

GAMEMODE:AddGroupChat(TEAM_MAYOR, TEAM_SECRETAIRE, TEAM_GARDE, TEAM_GENDARME, TEAM_AGN, TEAM_MGN, TEAM_BRI, TEAM_SDR, TEAM_OFFICIER, TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_INGEGIGN, TEAM_OSUGIGN, TEAM_MARECHAL, TEAM_GENGEN, TEAM_GIGNGENERAL, TEAM_AGS)
GAMEMODE:AddGroupChat(TEAM_GENDARME, TEAM_AGN, TEAM_MGN, TEAM_BRI, TEAM_SDR, TEAM_OFFICIER, TEAM_RECRUEGIGN, TEAM_MEDICGIGN, TEAM_SOLDATGIGN, TEAM_SNIPERGIGN, TEAM_INGEGIGN, TEAM_OSUGIGN, TEAM_MARECHAL, TEAM_GENGEN, TEAM_GIGNGENERAL, TEAM_AGS)
GAMEMODE:AddGroupChat(TEAM_PBANQUIER, TEAM_BANQUIER)
GAMEMODE:AddGroupChat(TEAM_CBRAQUEUR, TEAM_BRAQUEUR, TEAM_BRAQUEURV)
GAMEMODE:AddGroupChat(TEAM_CMAFIA, TEAM_MAFIA, TEAM_MAFIAV)
GAMEMODE:AddGroupChat(TEAM_CGANGSTER, TEAM_GANGSTER, TEAM_GANGSTERV)
GAMEMODE:AddGroupChat(TEAM_CYAKUSA, TEAM_YAKUSA, TEAM_YAKUSAV)
GAMEMODE:AddGroupChat(TEAM_CCARTEL, TEAM_CARTEL, TEAM_CARTELV)
GAMEMODE:AddGroupChat(TEAM_CBLOODZ, TEAM_BLOODZ, TEAM_BLOODZV)
GAMEMODE:AddGroupChat(TEAM_CCRIPZ, TEAM_CRIPZ, TEAM_CRIPZV)