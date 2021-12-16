--https://www.roblox.com/games/2809202155
--loadstring(game:HttpGet(""))()
local guishit = {}

local Players = game:GetService("Players")

function onHover(g,e)
    BillBoardGui013 = Instance.new("BillboardGui")
    Frame85634 = Instance.new("Frame")
    TextLabel53654 = Instance.new("TextLabel")
    TextLabel285863 = Instance.new("TextLabel")
    TextLabel7095612 = Instance.new("TextLabel")
    BillBoardGui013.Parent = game:GetService"CoreGui"
    BillBoardGui013.Adornee = g.Adornee
    BillBoardGui013.LightInfluence = 1
    BillBoardGui013.Size = UDim2.new(0, 101, 0, 100)
    BillBoardGui013.Active = true
    BillBoardGui013.ClipsDescendants = true
    BillBoardGui013.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    BillBoardGui013.AlwaysOnTop = true
    BillBoardGui013.ExtentsOffsetWorldSpace = Vector3.new(0, 5, 0)
    Frame85634.Parent = BillBoardGui013
    Frame85634.Position = UDim2.new(0.5, 0, 1, 0)
    Frame85634.Size = UDim2.new(1, 0, 1, 0)
    Frame85634.AnchorPoint = Vector2.new(0.5, 1)
    Frame85634.BackgroundColor = BrickColor.new("Dark stone grey")
    Frame85634.BackgroundColor3 = Color3.new(0.380392, 0.380392, 0.380392)
    Frame85634.BackgroundTransparency = 0.60000002384186
    Frame85634.BorderSizePixel = 0
    TextLabel53654.Name = "Level"
    TextLabel53654.Parent = Frame85634
    TextLabel53654.Position = UDim2.new(0, 0, 0.300000012, 0)
    TextLabel53654.Size = UDim2.new(1, 0, 0.300000012, 0)
    TextLabel53654.BackgroundColor = BrickColor.new("Institutional white")
    TextLabel53654.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel53654.BackgroundTransparency = 1
    TextLabel53654.Font = Enum.Font.PatrickHand
    TextLabel53654.FontSize = Enum.FontSize.Size14
    TextLabel53654.Text = g.Frame.Level.Text
    TextLabel53654.TextColor = BrickColor.new("Institutional white")
    TextLabel53654.TextColor3 = Color3.new(1, 1, 1)
    TextLabel53654.TextScaled = true
    TextLabel53654.TextSize = 14
    TextLabel53654.TextWrap = true
    TextLabel53654.TextWrapped = true
    TextLabel285863.Name = "Name"
    TextLabel285863.Parent = Frame85634
    TextLabel285863.Size = UDim2.new(1, 0, 0.300000012, 0)
    TextLabel285863.BackgroundColor = BrickColor.new("Institutional white")
    TextLabel285863.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel285863.BackgroundTransparency = 1
    TextLabel285863.Font = Enum.Font.PatrickHand
    TextLabel285863.FontSize = Enum.FontSize.Size14
    TextLabel285863.Text = e
    TextLabel285863.TextColor = BrickColor.new("Institutional white")
    TextLabel285863.TextColor3 = Color3.new(1, 1, 1)
    TextLabel285863.TextScaled = true
    TextLabel285863.TextSize = 14
    TextLabel285863.TextWrap = true
    TextLabel285863.TextWrapped = true
    TextLabel7095612.Name = "Stand"
    TextLabel7095612.Parent = Frame85634
    TextLabel7095612.Position = UDim2.new(0, 0, 0.600000024, 0)
    TextLabel7095612.Size = UDim2.new(1, 0, 0.300000012, 0)
    TextLabel7095612.BackgroundColor = BrickColor.new("Institutional white")
    TextLabel7095612.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel7095612.BackgroundTransparency = 1
    TextLabel7095612.Font = Enum.Font.PatrickHand
    TextLabel7095612.FontSize = Enum.FontSize.Size14
    TextLabel7095612.Text = g.Frame.Stand.Text
    TextLabel7095612.TextColor = BrickColor.new("Institutional white")
    TextLabel7095612.TextColor3 = Color3.new(1, 1, 1)
    TextLabel7095612.TextScaled = true
    TextLabel7095612.TextSize = 14
    TextLabel7095612.TextWrap = true
    TextLabel7095612.TextWrapped = true
    table.insert(guishit,BillBoardGui013)
    return BillBoardGui013
end

function addToPlayer(plr)
    spawn(function()
        local char = plr.Character or plr.CharacterAdded:wait()
        local hum = char:WaitForChild("HumanoidRootPart")
        BillboardGui0 = Instance.new("BillboardGui")
        table.insert(guishit,BillboardGui0)
        Frame1 = Instance.new("Frame")
        --Frame2 = Instance.new("Frame")
        --Frame3 = Instance.new("Frame")
        --Frame4 = Instance.new("Frame")
        TextLabel5 = Instance.new("TextLabel")
        TextLabel6 = Instance.new("TextLabel")
        TextLabel7 = Instance.new("TextLabel")
        BillboardGui0.Parent = game:GetService("CoreGui")
        BillboardGui0.LightInfluence = 1
        BillboardGui0.Size = UDim2.new(4, 0, 6, 0)
        BillboardGui0.Active = true
        BillboardGui0.ClipsDescendants = true
        BillboardGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        BillboardGui0.AlwaysOnTop = true
        BillboardGui0.Adornee = hum
        local SuggestedParent = Frame1
        Frame1.Parent = BillboardGui0
        Frame1.Size = UDim2.new(1,0,1,0)--UDim2.new(1, 0, 0.0299999993, 0)
        Frame1.BackgroundColor = BrickColor.new("Really red")
        Frame1.BackgroundColor3 = Color3.new(1, 0, 0)
        Frame1.BorderSizePixel = 0
        Frame1.BackgroundTransparency = .7
        
        --[[Frame2.Parent = BillboardGui0
        Frame2.Position = UDim2.new(0, 0, 1, 0)
        Frame2.Size = UDim2.new(1, 0, 0.0199999996, 0)
        Frame2.AnchorPoint = Vector2.new(0, 1)
        Frame2.BackgroundColor = BrickColor.new("Really red")
        Frame2.BackgroundColor3 = Color3.new(1, 0, 0)
        Frame2.BorderSizePixel = 0
        Frame3.Parent = BillboardGui0
        Frame3.Size = UDim2.new(0.0299999993, 0, 1, 0)
        Frame3.BackgroundColor = BrickColor.new("Really red")
        Frame3.BackgroundColor3 = Color3.new(1, 0, 0)
        Frame3.BorderSizePixel = 0
        Frame4.Parent = BillboardGui0
        Frame4.Position = UDim2.new(1, 0, 0, 0)
        Frame4.Size = UDim2.new(0.0299999993, 0, 1, 0)
        Frame4.AnchorPoint = Vector2.new(1, 0)
        Frame4.BackgroundColor = BrickColor.new("Really red")
        Frame4.BackgroundColor3 = Color3.new(1, 0, 0)
        Frame4.BorderSizePixel = 0]]
        TextLabel5.Name = "Level"
        TextLabel5.Parent = SuggestedParent
        TextLabel5.Position = UDim2.new(0.0299999993, 0, 0.699999988, 0)
        TextLabel5.Size = UDim2.new(0.930000007, 0, 0.140000001, 0)
        TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
        TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel5.BackgroundTransparency = 1
        TextLabel5.Font = Enum.Font.PatrickHand
        TextLabel5.FontSize = Enum.FontSize.Size14
        TextLabel5.Text = "Level: "..tostring(plr.PlayerStats.Level.Value)
        TextLabel5.TextColor = BrickColor.new("Institutional white")
        TextLabel5.TextColor3 = Color3.new(1, 1, 1)
        TextLabel5.TextScaled = true
        TextLabel5.TextSize = 14
        TextLabel5.TextWrap = true
        TextLabel5.TextWrapped = true
        TextLabel6.Text = "Stand: "..tostring(plr.PlayerStats.Stand.Value)
        TextLabel6.Parent = SuggestedParent
        TextLabel6.Position = UDim2.new(0.0299999993, 0, 0.850000024, 0)
        TextLabel6.Size = UDim2.new(0.930000007, 0, 0.140000001, 0)
        TextLabel6.BackgroundColor = BrickColor.new("Institutional white")
        TextLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel6.BackgroundTransparency = 1
        TextLabel6.Font = Enum.Font.PatrickHand
        TextLabel6.FontSize = Enum.FontSize.Size14
        TextLabel6.Name = "Stand"
        TextLabel6.TextColor = BrickColor.new("Institutional white")
        TextLabel6.TextColor3 = Color3.new(1, 1, 1)
        TextLabel6.TextScaled = true
        TextLabel6.TextSize = 14
        TextLabel6.TextWrap = true
        TextLabel6.TextWrapped = true
        TextLabel7.Text = "Player: "..(plr.DisplayName or plr.Name)
        TextLabel7.Parent = SuggestedParent
        TextLabel7.Position = UDim2.new(0.0299999993, 0, 0, 0)
        TextLabel7.Size = UDim2.new(0.930000007, 0, 0.150000006, 0)
        TextLabel7.BackgroundColor = BrickColor.new("Institutional white")
        TextLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel7.BackgroundTransparency = 1
        TextLabel7.Font = Enum.Font.PatrickHand
        TextLabel7.FontSize = Enum.FontSize.Size14
        TextLabel7.Name = "Name"
        TextLabel7.TextColor = BrickColor.new("Institutional white")
        TextLabel7.TextColor3 = Color3.new(1, 1, 1)
        TextLabel7.TextScaled = true
        TextLabel7.TextSize = 14
        TextLabel7.TextWrap = true
        TextLabel7.TextWrapped = true
        
        local hover = onHover(BillboardGui0,TextLabel7.Text)
        hover.Enabled = false
        
        Frame1.MouseEnter:Connect(function()
            hover.Enabled = true
        end)
        Frame1.MouseLeave:Connect(function()
            hover.Enabled = false
        end)
        
    end)
end

function main(v)
    if v ~= Players.LocalPlayer then
        v.CharacterAdded:connect(function()
            addToPlayer(v)
        end)
        addToPlayer(v)
    end
end

for _,v in pairs(Players:GetChildren()) do
    main(v)
end
Players.PlayerAdded:connect(main)

while wait(3) do
    for _,v in pairs(guishit) do
        if v ~= nil then
            if v.Adornee == nil then
                v:Remove()
            end
        end
    end
end
