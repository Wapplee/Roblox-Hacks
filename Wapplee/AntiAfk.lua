local vu = game:GetService'VirtualUser'
local times = 0
game:GetService'Players'.LocalPlayer.Idled:connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
    times=times+1
    print("Roblox tried to kick you "..times.." time(s)!")
end)
