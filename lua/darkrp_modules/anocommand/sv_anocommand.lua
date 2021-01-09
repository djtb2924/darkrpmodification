local red = Color(255, 0, 0)
local white = Color(255, 255, 255)

local function ano(ply, args)
    return args, function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", DarkRP.getPhrase("arguments"), ""))
            return
        end

        local players = player.GetAll()
        for i = 1, #players do
            DarkRP.talkToPerson(players[i], red, "[Anonyme] ", white, text, ply)
        end
    end
end

DarkRP.defineChatCommand("ano", ano, 1.5)
