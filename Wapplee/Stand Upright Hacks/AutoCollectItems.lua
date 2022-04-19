-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/Stand%20Upright%20Hacks/AutoCollectItems.lua"))()(200)
return function(SPEED,location)
  SPEED = SPEED or 100
local Items = workspace.Items
if not _G.CollectingItems and #Items:GetChildren()>=1 then
    _G.CollectingItems = true
    local OldIndex = nil
    local done = false
    OldIndex = hookmetamethod(game,"__index",newcclosure(function(...)
        local Self,key = ...
        if not done and key == "WalkSpeed" then
            return 16
        end
        return OldIndex(Self,key)
    end))
    
    local Smart = (_G.SmartModule==nil and loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/Smart%20Module.lua"))()or _G.SmartModule)
    local hum = Humanoid
    local HRP = Character.PrimaryPart
    
    local orig = HRP.Position
    hum.Changed:Connect(function(typ)
        if not done and typ == "WalkSpeed" then
            hum.WalkSpeed = SPEED
        end
    end)
    
    
    local pf = game:getService'PathfindingService'
    local path = pf:CreatePath({AgentCanJump=false,AgentRadius = 2})
    
    function makePath(pos)
        path:ComputeAsync(HRP.Position,pos)
        local wp = path:GetWaypoints()
        for _,v2 in pairs(wp) do
            hum:MoveTo(v2.Position)
            hum.MoveToFinished:wait()
        end
    end

    local rebind = Smart.DisableKeybinds{Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D}
    hum.WalkSpeed = SPEED

    if not location then
       for _,v in pairs(Items:GetChildren()) do
        if v.Parent == Items then
            makePath(v.Handle.Position)
            repeat wait(1) hum:MoveTo(v.Handle.Position) until v.Parent ~= Items 
        end
    end
    makePath(orig)
    else
       makepath(location)
    end
    done = true
    hum.WalkSpeed = 16
    
    rebind()
    _G.CollectingItems = false
end
end
