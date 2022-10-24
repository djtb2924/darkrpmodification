hook.Add("PlayerSpawn", "StaffSpawnGodded", function(ply)
    if ply:Team() == TEAM_STAFF then
        timer.Simple(6, function()
            ply:FAdmin_SetGlobal("FAdmin_godded", true)
            ply:GodEnable()
        end)

        return
    elseif ply:FAdmin_GetGlobal("FAdmin_godded") then
        ply:FAdmin_SetGlobal("FAdmin_godded", false)
        ply:GodDisable()
    end

    if ply:FAdmin_GetGlobal("FAdmin_cloaked") then
        ply:FAdmin_SetGlobal("FAdmin_cloaked", false)
        ply:SetNoDraw(false)

        for _, v in pairs(ply:GetWeapons()) do
            v:SetNoDraw(false)
        end

        for _, v in pairs(ents.FindByClass("physgun_beam")) do
            if v:GetParent() == ply then
                v:SetNoDraw(false)
            end
        end

        ply.FAdmin_CloakWeapon = nil
        local RemoveThink = true

        for _, v in ipairs(player.GetAll()) do
            if v:FAdmin_GetGlobal("FAdmin_cloaked") then
                RemoveThink = false
                break
            end
        end

        if RemoveThink then
            hook.Remove("Think", "FAdmin_Cloak")
        end
    end
end)