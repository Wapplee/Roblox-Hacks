--loadstring(game:HttpGet'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/AntiAfk.lua')()

print("Anti AFK Loaded!")
local vu = game:GetService'VirtualUser'
local times = 0
game:GetService'Players'.LocalPlayer.Idled:connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
    times=times+1
    print("Roblox tried to kick you "..times.." time(s)!")
end)
syn.queueonteleport("loadstring(game:HttpGet'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/AntiAfk.lua')()")
