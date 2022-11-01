--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
https://darkrp.miraheze.org/wiki/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]

-- Copyright © LiveYourGame, 2022

local color_white = color_white

local function createCategory(name, sortOrder)
    DarkRP.createCategory({
        name = name,
        categorises = "jobs",
        startExpanded = true,
        color = color_white,
        sortOrder = 100,
    })
end

createCategory("Gouvernement", 180)
createCategory("Services secrets", 170)
createCategory("Gendarmerie", 160)
createCategory("Farm", 150)
createCategory("Banque", 140)
createCategory("Métiers de la rue", 130)
createCategory("Gangs / Gangsters", 120)
createCategory("Gangs / Mafia", 110)
createCategory("Gangs / Yakuzas", 100)
createCategory("Gangs / Braqueurs", 90)
createCategory("Gangs / Cartel", 80)
createCategory("Gangs / Crips", 70)
createCategory("Gangs / Bloods", 60)
createCategory("Services", 50)
createCategory("Drogues", 40)
createCategory("Autre", 30)
createCategory("Sécurité", 20)
createCategory("Staff", 10)