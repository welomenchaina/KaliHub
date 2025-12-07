repeat task.wait() until game:IsLoaded()

local Keyless = getgenv().Keyless or false
local PaidOnly = getgenv().PaidOnly or false

local cloneref = cloneref or function(v) return v end
local Plr = cloneref(game:GetService("Players").LocalPlayer) or game.Players.LocalPlayer
local FF2 = true

if string.split(identifyexecutor() or "None", " ")[1] == "Xeno" or not identifyexecutor then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Trash Executor",
        Text = "Your executor may not support certain features, or may be laggy.",
        Duration = 5
    })
    FF2 = false
end

if not Keyless and not script_key then
    Plr:Kick("You haven't entered a key please enter a key otherwise you wont gain access")
end

-- Live of Life
if game.GameId == 7649977999 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6ef25ea2afe1992a7faf7e4997edf9cf.lua"))()
end

-- Football Universe
if game.GameId == 184199275 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a124840d3b74176a617955b3549eaac9.lua"))()
end

-- Football Legends
if game.GameId == 6505338302 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b579d668259b545fae9e3be80f09b9af.lua"))()
end

-- Basketball Legends
if game.GameId == 4931927012 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5498e9ccc6fd43b77e487b0ec4724922.lua"))()
end

-- Highschool Football
if game.GameId == 8633498940 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/177015ce43d8b9be1d7e703a843ffc5c.lua"))()
end

-- Flag Football
if game.GameId == 8558141897 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d01dc3f269e8e5464deb46c49bc8b408.lua"))()
end

-- Football Fusion 2
if game.GameId == 3150475059 and FF2 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/8d21ae7ac2e737fa095cc28fee57cc41.lua"))()
end
