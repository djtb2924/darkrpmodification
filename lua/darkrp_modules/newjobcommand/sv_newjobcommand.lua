local allowedTeams = {
    [TEAM_AGS] = true,
    [TEAM_MAYOR] = true
}

local function ChangeJob(ply, args)
    if args == "" then
        DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))

        return ""
    end

    if not allowedTeams[ply:Team()] then
        DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("disabled", "/job", ""))

        return ""
    end

    local canChangeJob, message, replace = gamemode.Call("canChangeJob", ply, args)

    if canChangeJob == false then
        DarkRP.notify(ply, 1, 4, message or DarkRP.getPhrase("unable", "/job", ""))

        return ""
    end

    local job = replace or args
    DarkRP.notifyAll(2, 4, DarkRP.getPhrase("job_has_become", ply:Nick(), job))
    ply:updateJob(job)

    return ""
end

DarkRP.defineChatCommand("job", ChangeJob)