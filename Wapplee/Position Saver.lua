local function drag(title,main)
	main = main or title
	local connection
	title.InputBegan:Connect(function(old_inp)
		if old_inp.UserInputType == Enum.UserInputType.MouseButton1 then
			local start_pos = main.Position
			connection = game:GetService("UserInputService").InputChanged:Connect(function(new_inp)
				if new_inp.UserInputType == Enum.UserInputType.MouseMovement then
					local delta = new_inp.Position-old_inp.Position
					main.Position = UDim2.new(
						start_pos.X.Scale, 
						start_pos.X.Offset + delta.X, 
						start_pos.Y.Scale, 
						start_pos.Y.Offset + delta.Y
					)
				end
			end)
		end
	end)
	title.InputEnded:Connect(function(cur_input)
		if cur_input.UserInputType == Enum.UserInputType.MouseButton1 then
			connection:Disconnect()
		end
	end)
end

local owner if game:GetService("RunService"):IsClient() then owner = game:GetService("Players").LocalPlayer end
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
TextLabel2 = Instance.new("TextLabel")
ScrollingFrame3 = Instance.new("ScrollingFrame")
UIGridLayout4 = Instance.new("UIGridLayout")
TextButton5 = Instance.new("TextButton")
TextButton6 = Instance.new("TextButton")
TextButton7 = Instance.new("TextButton")
TextButton8 = Instance.new("TextButton")
CFrameValue9 = Instance.new("CFrameValue")
LocalScript10 = Instance.new("LocalScript")
TextButton8532 = Instance.new("TextButton")
ScreenGui0.Name = "Yo."
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Name = "Backframe"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.0254323483, 0, 0.37204057, 0)
Frame1.Size = UDim2.new(0.116480164, 0, 0.324689955, 0)
Frame1.BackgroundColor = BrickColor.new("Black")
Frame1.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Frame1.BorderSizePixel = 0
TextLabel2.Name = "Title"
TextLabel2.Parent = Frame1
TextLabel2.Size = UDim2.new(1, 0, 0.0833333358, 0)
TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 0.89999997615814
TextLabel2.BorderSizePixel = 0
TextLabel2.Font = Enum.Font.PatrickHand
TextLabel2.FontSize = Enum.FontSize.Size14
TextLabel2.Text = "Wapplee's CFrame Saver"
TextLabel2.TextColor = BrickColor.new("Sand green")
TextLabel2.TextColor3 = Color3.new(0.494118, 0.494118, 0.494118)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14
TextLabel2.TextWrap = true
TextLabel2.TextWrapped = true
ScrollingFrame3.Name = "scrolling"
ScrollingFrame3.Parent = Frame1
ScrollingFrame3.Position = UDim2.new(0.0611353703, 0, 0.364583343, 0)
ScrollingFrame3.Size = UDim2.new(0.873362422, 0, 0.586805582, 0)
ScrollingFrame3.Active = true
ScrollingFrame3.BackgroundColor = BrickColor.new("Institutional white")
ScrollingFrame3.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame3.BackgroundTransparency = 0.89999997615814
ScrollingFrame3.BorderSizePixel = 0
UIGridLayout4.Parent = ScrollingFrame3
UIGridLayout4.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout4.CellSize = UDim2.new(1, 0, 0, 50)
TextButton5.Name = "base"
TextButton5.Parent = Frame1
TextButton5.Position = UDim2.new(0.0611353703, 0, 0.118055552, 0)
TextButton5.Size = UDim2.new(0.375545859, 0, 0.0729166642, 0)
TextButton5.BackgroundColor = BrickColor.new("Institutional white")
TextButton5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton5.BackgroundTransparency = 0.89999997615814
TextButton5.BorderSizePixel = 0
TextButton5.Font = Enum.Font.PatrickHand
TextButton5.FontSize = Enum.FontSize.Size14
TextButton5.Text = "Copy Base"
TextButton5.TextColor = BrickColor.new("Sand green")
TextButton5.TextColor3 = Color3.new(0.494118, 0.494118, 0.494118)
TextButton5.TextScaled = true
TextButton5.TextSize = 14
TextButton5.TextWrap = true
TextButton5.TextWrapped = true
TextButton6.Name = "full"
TextButton6.Parent = Frame1
TextButton6.Position = UDim2.new(0.558951974, 0, 0.118055552, 0)
TextButton6.Size = UDim2.new(0.375545859, 0, 0.0729166642, 0)
TextButton6.BackgroundColor = BrickColor.new("Institutional white")
TextButton6.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton6.BackgroundTransparency = 0.89999997615814
TextButton6.BorderSizePixel = 0
TextButton6.Font = Enum.Font.PatrickHand
TextButton6.FontSize = Enum.FontSize.Size14
TextButton6.Text = "Copy Full"
TextButton6.TextColor = BrickColor.new("Sand green")
TextButton6.TextColor3 = Color3.new(0.494118, 0.494118, 0.494118)
TextButton6.TextScaled = true
TextButton6.TextSize = 14
TextButton6.TextWrap = true
TextButton6.TextWrapped = true
TextButton7.Name = "tele"
TextButton7.Parent = Frame1
TextButton7.Position = UDim2.new(0.061, 0,0.25, 0)
TextButton7.Size = UDim2.new(0.376, 0,0.073, 0)
TextButton7.BackgroundColor = BrickColor.new("Institutional white")
TextButton7.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton7.BackgroundTransparency = 0.89999997615814
TextButton7.BorderSizePixel = 0
TextButton7.Font = Enum.Font.PatrickHand
TextButton7.FontSize = Enum.FontSize.Size14
TextButton7.Text = "Teleport"
TextButton7.TextColor = BrickColor.new("Sand green")
TextButton7.TextColor3 = Color3.new(0.494118, 0.494118, 0.494118)
TextButton7.TextScaled = true
TextButton7.TextSize = 14
TextButton7.TextWrap = true
TextButton7.TextWrapped = true
TextButton8.Name = "Button"
TextButton8.Parent = ScreenGui0
TextButton8.Visible = false
TextButton8.Size = UDim2.new(1, 0, 0.295857996, 0)
TextButton8.BackgroundColor = BrickColor.new("Institutional white")
TextButton8.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton8.BackgroundTransparency = 0.89999997615814
TextButton8.BorderSizePixel = 0
TextButton8.Font = Enum.Font.PatrickHand
TextButton8.FontSize = Enum.FontSize.Size28
TextButton8.Text = ""
TextButton8.TextColor = BrickColor.new("Sand green")
TextButton8.TextColor3 = Color3.new(0.494118, 0.494118, 0.494118)
TextButton8.TextSize = 25
TextButton8.TextWrap = true
TextButton8.TextWrapped = true
TextButton8.TextXAlignment = Enum.TextXAlignment.Left
TextButton8.TextYAlignment = Enum.TextYAlignment.Top
CFrameValue9.Parent = TextButton8
LocalScript10.Parent = ScreenGui0

TextButton8532.Name = "save"
TextButton8532.Parent = Frame1
TextButton8532.Position = UDim2.new(0.558951974, 0, 0.25, 0)
TextButton8532.Size = UDim2.new(0.375545859, 0, 0.0729166642, 0)
TextButton8532.BackgroundColor = BrickColor.new("Institutional white")
TextButton8532.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton8532.BackgroundTransparency = 0.89999997615814
TextButton8532.BorderSizePixel = 0
TextButton8532.Font = Enum.Font.PatrickHand
TextButton8532.FontSize = Enum.FontSize.Size14
TextButton8532.Text = "Save"
TextButton8532.TextColor = BrickColor.new("Sand green")
TextButton8532.TextColor3 = Color3.new(0.494118, 0.494118, 0.494118)
TextButton8532.TextScaled = true
TextButton8532.TextSize = 14
TextButton8532.TextWrap = true
TextButton8532.TextWrapped = true

Instance.new("UICorner",Frame1)
Instance.new("UICorner",TextLabel2)
pcall(function()syn.protect_gui(ScreenGui0)end)
pcall(function()protect_gui(ScreenGui0)end)
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("CoreGui")
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end





local screenGui = ScreenGui0
local Backframe = Frame1
local cordsGui = TextButton8
local scrolling = ScrollingFrame3
local localPlayer = game:GetService("Players").LocalPlayer
local teleportButton = TextButton7
local fullButton = TextButton6
local baseButton = TextButton5
local saveButton = TextButton8532
local smart = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/Smart%20Module.lua"))()
local BaseTele = "game:GetService('Players').LocalPlayer.Character:SetPrimaryPartCFrame("

drag(TextLabel2,Backframe)

local selected = nil

function angles(a,b,c)
	return CFrame.Angles(math.rad(a),math.rad(b),math.rad(c))
end

function newButton(func)
	local button = cordsGui:Clone()
	button.Parent = scrolling
	button.Visible = true
	local buttonClose = Instance.new("TextButton")
	buttonClose.Text = "X"
	buttonClose.BackgroundTransparency = 1
	buttonClose.Font = "PatrickHand"
	buttonClose.TextScaled = true
	buttonClose.TextColor3 = Color3.new(1,0,0)
	buttonClose.Position = UDim2.new(0.88, 0,0, 0)
	buttonClose.Size = UDim2.new(0.06, 10,0.24, 10)
	buttonClose.Parent = button
	buttonClose.MouseButton1Click:Connect(function()
		if selected == button then
			selected.BackgroundColor3 = Color3.new(1,1,1)
			selected = nil
		end
		button:Remove()
	end)
	button.MouseButton1Click:Connect(function()
		if selected == button then
			selected = nil
			button.BackgroundColor3 = Color3.new(1,1,1)
		elseif selected == nil then
			selected = button
			selected.BackgroundColor3 = Color3.fromRGB(0,0,0)
		elseif typeof(button) == "Instance" and button.Parent == scrolling and selected ~= button then
			button.BackgroundColor3 = Color3.fromRGB(0,0,0)
			selected.BackgroundColor3 = Color3.new(1,1,1)
			selected = button
		end
	end)
	if type(func)=="function" then
		spawn(function()
			wait(.01)
			func(button)
		end)
	end
	return button
end

function getCords()
	local cords = localPlayer.Character
	if cords then
		cords = cords.PrimaryPart or cords:FindFirstChild("HumanoidRootPart")
		if cords then
			return {cords.Position, cords.Orientation}
		end
	end
end

function getCFramefromPosAndRot(pos,rot)
	local cf = CFrame.new(pos.X,pos.Y,pos.Z) * angles(rot.X,rot.Y,rot.Z)
	return {cf, "Position: "..pos.X.." "..pos.Y.." "..pos.Z.."\nRotation: "..rot.X.." "..rot.Y.." "..rot.Z}
end

baseButton.MouseButton1Click:Connect(function()
	smart.Copy(BaseTele..")")
end)
fullButton.MouseButton1Click:Connect(function()
	if selected ~= nil then
		if typeof(selected) == "Instance" then
			local cfVal = selected.Value.Value
			smart.Copy(BaseTele.."CFrame.new("..tostring(cfVal).."))")
		end
	end
end)
teleportButton.MouseButton1Click:Connect(function()
	if localPlayer.Character and selected ~= nil and typeof(selected) == "Instance" and selected.Parent == scrolling then
		local hum = localPlayer.Character.PrimaryPart or localPlayer.Character:FindFirstChild("HumanoidRootPart")
		if hum then
			local last = localPlayer.Character.PrimaryPart
			if localPlayer.Character.PrimaryPart ~= hum then
				localPlayer.Character.PrimaryPart = hum
			end
			localPlayer.Character:SetPrimaryPartCFrame(selected.Value.Value)
			localPlayer.Character.PrimaryPart = last
		end
	end
end)
saveButton.MouseButton1Click:connect(function()
	if localPlayer.Character and localPlayer.Character.PrimaryPart ~= nil then
		local button = newButton()
		local heh = getCFramefromPosAndRot(localPlayer.Character.PrimaryPart.Position,localPlayer.Character.PrimaryPart.Rotation)
		button.Text = heh[2]
		button.Value.Value = heh[1]
	end
end)
