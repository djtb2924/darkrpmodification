local red = Color(255, 0, 0)
local color_white = color_white

local function ano(ply, args)
    return args, function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", DarkRP.getPhrase("arguments"), ""))
            return
        end

        local players = player.GetAll()
        for i = 1, #players do
            DarkRP.talkToPerson(players[i], red, "[Anonyme]", color_white, text, ply)
        end
    end
end

DarkRP.defineChatCommand("ano", ano, 1.5)
