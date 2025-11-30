repeat task.wait() until game:IsLoaded()

local cloneref = cloneref or function(v) return v end
local Plr = cloneref(game:GetService("Players").LocalPlayer) or game.Players.LocalPlayer

if not script_key then
    Plr:Kick("You haven't entered a key please enter a key otherwise you wont gain access")
end

if game.GameId == 7649977999 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6ef25ea2afe1992a7faf7e4997edf9cf.lua"))() -- live of life
end

if game.GameId == 184199275 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a124840d3b74176a617955b3549eaac9.lua"))() -- football universe
end

if game.GameId == 6505338302 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b579d668259b545fae9e3be80f09b9af.lua"))() -- football legends
end

if game.GameId == 4931927012 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5498e9ccc6fd43b77e487b0ec4724922.lua"))() -- basketball legends
end
