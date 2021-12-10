-- loadstring(game:HttpGet'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/flingatron.lua')()
local gayKeybinds = false
local flingSpeed = 100



local cps = 0
local LocalPlayer = game:GetService("Players").LocalPlayer
local tool = Instance.new("Tool",LocalPlayer.Backpack)
tool.RequiresHandle = false
local equip = false
local mouse = LocalPlayer:GetMouse()
tool.Activated:Connect(function()
    task.delay(.5,function()
        cps = cps-1.5
    end)
    cps = cps+1.5
    local cha= LocalPlayer.Character
    if cha then
        local e = cha:FindFirstChild("HumanoidRootPart")
        if e then
            local mouseHit = mouse.Hit
            e.Velocity = CFrame.new(e.Position,mouseHit.Position).LookVector*flingSpeed*(1+(cps/2))
        end
    end
end)
mouse.KeyDown:Connect(function(c)
    c=c:lower()
    if equip and c == "'" then
        gayKeybinds = not gayKeybinds
    end
    if gayKeybinds == false then return end
    if equip and c == "q" then
        local cha= LocalPlayer.Character
        if cha then
            local e = cha:FindFirstChild("HumanoidRootPart")
            if e then
                local mouseHit = mouse.Hit
                e.Velocity = CFrame.new(0,0,0).LookVector*0
            end
        end
    end
    if equip and c == "e" then
        local cha= LocalPlayer.Character
        if cha then
            local e = cha:FindFirstChild("HumanoidRootPart")
            if e then
                 local mouseHit = mouse.Hit
                e.Velocity = CFrame.new(e.Position,mouseHit.Position).LookVector*500
            end
        end
    end
    if equip and c == "r" then
        local cha= LocalPlayer.Character
        if cha then
            local e = cha:FindFirstChild("HumanoidRootPart")
            if e then
                cha:SetPrimaryPartCFrame(cha.PrimaryPart.CFrame*CFrame.new(0,0,-5))
            end
        end
    end
    if equip and c == "t" then
        local cha= LocalPlayer.Character
        if cha then
            local e = cha:FindFirstChild("HumanoidRootPart")
            if e then
                cha:SetPrimaryPartCFrame(mouse.Hit*CFrame.new(0,5,0))
            end
        end
    end
end)
tool.Equipped:Connect(function()
    equip = true
end)
tool.Unequipped:Connect(function()
    equip = false
end)
    
tool.Name = "flingatron"
