local green = Color(20, 150, 20)

local function medic(ply, args)
    return args, function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", DarkRP.getPhrase("arguments"), ""))
            return
        end

        if not team.NumPlayers(TEAM_SAMU) then return end

        local col = team.GetColor(ply:Team())
        local name = ply:Nick()

        local players = player.GetAll()
        for i = 1, #players do
            if players[i]:Team() == TEAM_SAMU or players[i] == ply then
                DarkRP.talkToPerson(players[i], col, "(Samu) " .. name, green, text, ply)
            end
        end
    end
end

DarkRP.defineChatCommand("medic", medic)
