
local b = _G.name
if _G.startUPCARTS == nil then
    _G.startUPCARTS = true
    
    for _,v in pairs(workspace:GetChildren()) do
        if v.Name == "Carts" then
            if v:FindFirstChild("1Regen") then
                v.Name = "CartsRegen"
            end
        end
    end
    local a = workspace.Carts
    
    local stuff = {"Up","Down","On"}
    spawn(function()
        while wait(.25) do
            if _G.randomButtons == true then
                b = stuff[math.random(1,#stuff)]
            end
            if _G.cartAlwaysStatus ~= nil then
                for _,v in pairs(a:GetChildren()) do
                    if _G.cartAlwaysStatus == true then
                        if v.On.BrickColor == BrickColor.new("Bright red") then
                            fireclickdetector(v.On.Click)
                        end
                    else
                        if v.On.BrickColor ~= BrickColor.new("Bright red") then
                            fireclickdetector(v.On.Click)
                        end
                    end
                end
            end
            if _G.loop == true then
                for _,v in pairs(a:GetChildren()) do
                    if _G.randomButtons == true then
                        fireclickdetector(v[b].Click)
                    elseif _G.randomButtons == false then
                        fireclickdetector(v[_G.typeButton].Click)
                    end
                end
            end
        end
    end)
end
