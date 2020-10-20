local yellow = Color(255, 255, 0)

local function pub(ply, args)
    return args, function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", DarkRP.getPhrase("arguments"), ""))
            return ""
        end

        local col = team.GetColor(ply:Team())
        local name = ply:Nick()
        for _, v in ipairs(player.GetAll()) do
            DarkRP.talkToPerson(v, col, "[Publicité] " .. name, yellow, text, ply)
        end
    end
end
DarkRP.defineChatCommand("pub", pub)