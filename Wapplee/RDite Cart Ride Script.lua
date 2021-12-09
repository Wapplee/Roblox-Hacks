--loadstring(game:HttpGet'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/RDite%20Cart%20Ride%20Script.lua')()
local placeId = 4913581664

if not (game.PlaceId == placeId) then loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/Smart%20Module.lua"))().Notification({Title="Teleport to the correct place?",Description = "",Duration = 60},{{"Yes.",function()pcall(function()syn.queue_on_teleport("loadstring(game:HttpGet'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/RDite%20Cart%20Ride%20Script.lua')()") end)  game:GetService"TeleportService":Teleport(placeId,game:GetService("Players").LocalPlayer) end},{"No."}}) error'Not in the right game! - Wapplee'end





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
LocalScript3 = Instance.new("LocalScript")
Folder4 = Instance.new("Folder")
TextButton5 = Instance.new("TextButton")
TextLabel6 = Instance.new("TextLabel")
TextButton7 = Instance.new("TextButton")
TextLabel8 = Instance.new("TextLabel")
TextButton9 = Instance.new("TextButton")
TextLabel10 = Instance.new("TextLabel")
TextButton11 = Instance.new("TextButton")
TextLabel12 = Instance.new("TextLabel")
LocalScript13 = Instance.new("LocalScript")
TextButton14 = Instance.new("TextButton")
TextLabel15 = Instance.new("TextLabel")
TextButton16 = Instance.new("TextButton")
TextLabel17 = Instance.new("TextLabel")
TextButton18 = Instance.new("TextButton")
TextLabel19 = Instance.new("TextLabel")
TextLabel20 = Instance.new("TextLabel")
TextLabel21 = Instance.new("TextLabel")
Frame22 = Instance.new("Frame")
ScreenGui0.Name = "Yo'"
ScreenGui0.Parent = mas
ScreenGui0.ResetOnSpawn = false
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Name = "Backframe"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.0661241114, 0, 0.226606533, 0)
Frame1.Size = UDim2.new(0.167334689, 0, 0.405862451, 0)
Frame1.BackgroundColor = BrickColor.new("Black")
Frame1.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Frame1.BorderSizePixel = 0
TextLabel2.Name = "Title"
TextLabel2.Parent = Frame1
TextLabel2.Size = UDim2.new(1, 0, 0.101626016, 0)
TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 0.89999997615814
TextLabel2.BorderSizePixel = 0
TextLabel2.Font = Enum.Font.PatrickHand
TextLabel2.FontSize = Enum.FontSize.Size14
TextLabel2.Text = "Wapplee's RDite Cart Ride Fucker-Up"
TextLabel2.TextColor = BrickColor.new("Medium stone grey")
TextLabel2.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14
TextLabel2.TextWrap = true
TextLabel2.TextWrapped = true
LocalScript3.Parent = TextLabel2
table.insert(cors,sandbox(LocalScript3,function()
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
	drag(script.Parent,script.Parent.Parent)
end))
Folder4.Parent = Frame1
TextButton5.Name = "On"
TextButton5.Parent = Folder4
TextButton5.Position = UDim2.new(0.0833333358, 0, 0.19101122, 0)
TextButton5.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton5.BackgroundColor = BrickColor.new("Institutional white")
TextButton5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton5.BackgroundTransparency = 0.89999997615814
TextButton5.BorderSizePixel = 0
TextButton5.Font = Enum.Font.PatrickHand
TextButton5.FontSize = Enum.FontSize.Size14
TextButton5.Text = ""
TextButton5.TextColor = BrickColor.new("Medium stone grey")
TextButton5.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton5.TextScaled = true
TextButton5.TextSize = 14
TextButton5.TextWrap = true
TextButton5.TextWrapped = true
TextLabel6.Name = "On"
TextLabel6.Parent = TextButton5
TextLabel6.Position = UDim2.new(1.39912176, 0, -0.0195151884, 0)
TextLabel6.Size = UDim2.new(3.65350914, 0, 1.01951587, 0)
TextLabel6.Active = true
TextLabel6.BackgroundColor = BrickColor.new("Institutional white")
TextLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel6.BackgroundTransparency = 1
TextLabel6.BorderSizePixel = 0
TextLabel6.Selectable = true
TextLabel6.Font = Enum.Font.PatrickHand
TextLabel6.FontSize = Enum.FontSize.Size14
TextLabel6.Text = "Always On"
TextLabel6.TextColor = BrickColor.new("Medium stone grey")
TextLabel6.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel6.TextScaled = true
TextLabel6.TextSize = 14
TextLabel6.TextWrap = true
TextLabel6.TextWrapped = true
TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
TextButton7.Name = "Off"
TextButton7.Parent = Folder4
TextButton7.Position = UDim2.new(0.0829999968, 0, 0.280999988, 0)
TextButton7.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton7.BackgroundColor = BrickColor.new("Institutional white")
TextButton7.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton7.BackgroundTransparency = 0.89999997615814
TextButton7.BorderSizePixel = 0
TextButton7.Font = Enum.Font.PatrickHand
TextButton7.FontSize = Enum.FontSize.Size14
TextButton7.Text = ""
TextButton7.TextColor = BrickColor.new("Medium stone grey")
TextButton7.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton7.TextScaled = true
TextButton7.TextSize = 14
TextButton7.TextWrap = true
TextButton7.TextWrapped = true
TextLabel8.Name = "On"
TextLabel8.Parent = TextButton7
TextLabel8.Position = UDim2.new(1.39912176, 0, -0.0195151884, 0)
TextLabel8.Size = UDim2.new(3.65350914, 0, 1.01951587, 0)
TextLabel8.Active = true
TextLabel8.BackgroundColor = BrickColor.new("Institutional white")
TextLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel8.BackgroundTransparency = 1
TextLabel8.BorderSizePixel = 0
TextLabel8.Selectable = true
TextLabel8.Font = Enum.Font.PatrickHand
TextLabel8.FontSize = Enum.FontSize.Size14
TextLabel8.Text = "Always Off"
TextLabel8.TextColor = BrickColor.new("Medium stone grey")
TextLabel8.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel8.TextScaled = true
TextLabel8.TextSize = 14
TextLabel8.TextWrap = true
TextLabel8.TextWrapped = true
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
TextButton9.Name = "Enabled"
TextButton9.Parent = Folder4
TextButton9.Position = UDim2.new(0.605222225, 0, 0.130299985, 0)
TextButton9.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton9.BackgroundColor = BrickColor.new("Institutional white")
TextButton9.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton9.BackgroundTransparency = 0.89999997615814
TextButton9.BorderSizePixel = 0
TextButton9.Font = Enum.Font.PatrickHand
TextButton9.FontSize = Enum.FontSize.Size14
TextButton9.Text = ""
TextButton9.TextColor = BrickColor.new("Medium stone grey")
TextButton9.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton9.TextScaled = true
TextButton9.TextSize = 14
TextButton9.TextWrap = true
TextButton9.TextWrapped = true
TextLabel10.Name = "On"
TextLabel10.Parent = TextButton9
TextLabel10.Position = UDim2.new(1.39912188, 0, -0.0195153356, 0)
TextLabel10.Size = UDim2.new(2.78527236, 0, 1.01951587, 0)
TextLabel10.Active = true
TextLabel10.BackgroundColor = BrickColor.new("Institutional white")
TextLabel10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel10.BackgroundTransparency = 1
TextLabel10.BorderSizePixel = 0
TextLabel10.Selectable = true
TextLabel10.Font = Enum.Font.PatrickHand
TextLabel10.FontSize = Enum.FontSize.Size14
TextLabel10.Text = "Enabled"
TextLabel10.TextColor = BrickColor.new("Medium stone grey")
TextLabel10.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel10.TextScaled = true
TextLabel10.TextSize = 14
TextLabel10.TextWrap = true
TextLabel10.TextWrapped = true
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
TextButton11.Name = "Randomized"
TextButton11.Parent = Folder4
TextButton11.Position = UDim2.new(0.605222225, 0, 0.219188884, 0)
TextButton11.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton11.BackgroundColor = BrickColor.new("Institutional white")
TextButton11.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton11.BackgroundTransparency = 0.89999997615814
TextButton11.BorderSizePixel = 0
TextButton11.Font = Enum.Font.PatrickHand
TextButton11.FontSize = Enum.FontSize.Size14
TextButton11.Text = ""
TextButton11.TextColor = BrickColor.new("Medium stone grey")
TextButton11.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton11.TextScaled = true
TextButton11.TextSize = 14
TextButton11.TextWrap = true
TextButton11.TextWrapped = true
TextLabel12.Name = "On"
TextLabel12.Parent = TextButton11
TextLabel12.Position = UDim2.new(1.39912188, 0, -0.0195153356, 0)
TextLabel12.Size = UDim2.new(2.78527236, 0, 1.01951587, 0)
TextLabel12.Active = true
TextLabel12.BackgroundColor = BrickColor.new("Institutional white")
TextLabel12.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel12.BackgroundTransparency = 1
TextLabel12.BorderSizePixel = 0
TextLabel12.Selectable = true
TextLabel12.Font = Enum.Font.PatrickHand
TextLabel12.FontSize = Enum.FontSize.Size14
TextLabel12.Text = "Randomized Buttons"
TextLabel12.TextColor = BrickColor.new("Medium stone grey")
TextLabel12.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel12.TextScaled = true
TextLabel12.TextSize = 14
TextLabel12.TextWrap = true
TextLabel12.TextWrapped = true
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
LocalScript13.Parent = Folder4
table.insert(cors,sandbox(LocalScript13,function()
	local Enabled = false -- done
	local PoweredOff = false -- done
	local PoweredOn = false-- done
	local Randomized = false -- done
	local UpPower = false -- done
	local DownPower = false -- done
	local Power = false -- done
	local Regen = false -- done
	local CertainSpeed = false
	local CERTAINSPEED = 0


--[[
TODO: add buttons and make them change variables
]]

	local Folder = script.Parent
	local randomButton = Folder:WaitForChild("Randomized")
	local EnabledButton = Folder:WaitForChild("Enabled")
	local Poweredoff = Folder:WaitForChild("Off")
	local Poweredon = Folder:WaitForChild("On")
	local Uppower = Folder:WaitForChild("UpPower")
	local Downpower = Folder:WaitForChild("DownPower")
	local power = Folder:WaitForChild("Power")
	local regen = Folder:WaitForChild("Regen")
	local Certainspeed = Folder:WaitForChild("CertainSpeed")

	function get(button)
		return button.Text == "X" and true or false
	end
	function set(button)
		button.Text = button.Text == "X" and "" or "X"
		update()
		return get(button)
	end
	regen.MouseButton1Click:Connect(function()
		Regen = set(regen)
	end)
	randomButton.MouseButton1Click:Connect(function()
		Randomized = set(randomButton)
	end)
	EnabledButton.MouseButton1Click:Connect(function()
		Enabled = set(EnabledButton)
	end)
	Poweredoff.MouseButton1Click:Connect(function()
		if get(Poweredon) == true then
			PoweredOn = set(Poweredon)
		end
		PoweredOff= set(Poweredoff)
	end)
	Poweredon.MouseButton1Click:Connect(function()
		if get(Poweredoff) == true then
			PoweredOff = set(Poweredoff)
		end
		PoweredOn = set(Poweredon)
	end)
	Uppower.MouseButton1Click:Connect(function()
		if get(Downpower) == true then
			DownPower = set(Downpower)
		end
		UpPower = set(Uppower)
	end)
	Downpower.MouseButton1Click:Connect(function()
		if get(Uppower) == true then
			UpPower = set(Uppower)
		end
		if get(Certainspeed) == true then
			CertainSpeed = set(Certainspeed)
		end
		DownPower = set(Downpower)
	end)
	power.MouseButton1Click:Connect(function()
		Power = set(power)
	end)
	Certainspeed.MouseButton1Click:Connect(function()
		if get(Uppower) == true then
			UpPower = set(Uppower)
		end
		if get(Downpower) == true then
			DownPower = set(Downpower)
		end
		CertainSpeed = set(Certainspeed)
	end)


	local ButtonNamesToPress = {}
	function update()
		local function remove(name)
			if table.find(ButtonNamesToPress,name) then
				table.remove(ButtonNamesToPress,table.find(ButtonNamesToPress,name))
			end
		end
		local function notFind(tag)
			return not table.find(ButtonNamesToPress,tag)
		end
		CERTAINSPEED = Certainspeed.txt.Text
		if UpPower == true and notFind'Up'then
			table.insert(ButtonNamesToPress,"Up")
		else
			remove("Up")
		end

		if DownPower == true and notFind'Down'then
			table.insert(ButtonNamesToPress,"Down")
		else
			remove("Down")
		end

		if Power == true and notFind'On'then
			table.insert(ButtonNamesToPress,"On")
		elseif Power == false then
			remove("On")
		end
	end






	if _G.startUPCARTS == nil then
		_G.startUPCARTS = true
		local RegenCarts
		for _,v in pairs(workspace:GetChildren()) do
			if v.Name == "Carts" then
				if v:FindFirstChild("1Regen") then
					v.Name = "CartsRegen"
					RegenCarts = v
				end
			end
		end
		local Carts = workspace.Carts
		spawn(function()
			while wait(.25) do
				update()
				if Regen == true then
					for _,v in pairs(RegenCarts:GetChildren()) do
						local reswij = v:FindFirstChild("Click")
						if reswij then
							fireclickdetector(reswij)
						end
					end
				end
				if Enabled == true then
					if Randomized == false then
						for _,v in pairs(Carts:GetChildren()) do
							if CertainSpeed == false then
								for _,v2 in pairs(ButtonNamesToPress) do
									if v:FindFirstChild(v2) then
										fireclickdetector(v[v2].Click)
									end
								end
							else
								local speed = v:FindFirstChild("Configuration"):FindFirstChild("Speed")
								if speed and tonumber(CERTAINSPEED) then
									local setSpeed = math.floor(tonumber(CERTAINSPEED))/5
									speed = speed.Value/5
									if setSpeed < speed then
										if v:FindFirstChild("Down"):FindFirstChild("Click") then
											fireclickdetector(v.Down.Click)
										end
									elseif setSpeed > speed then
										if v:FindFirstChild("Up"):FindFirstChild("Click") then
											fireclickdetector(v.Up.Click)
										end
									end
								end
							end
						end
					else
						for _,v in pairs(Carts:GetChildren()) do
							local random = ({"On","Down","Up"})[math.random(1,3)]
							if v:FindFirstChild(random) then
								fireclickdetector(v[random].Click)
							end
						end
					end
					for _,v in pairs(Carts:GetChildren()) do
						if PoweredOn == true then
							if v.On.BrickColor == BrickColor.new("Bright red") then
								fireclickdetector(v.On.Click)
							end
						elseif PoweredOff == true then
							if v.On.BrickColor ~= BrickColor.new("Bright red") then
								fireclickdetector(v.On.Click)
							end
						end
					end
				end
			end
		end)
	end
end))
Instance.new("UICorner",TextLabel2)
Instance.new("UICorner",Frame1)
TextButton14.Name = "DownPower"
TextButton14.Parent = Folder4
TextButton14.Position = UDim2.new(0.0796296299, 0, 0.457677841, 0)
TextButton14.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton14.BackgroundColor = BrickColor.new("Institutional white")
TextButton14.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton14.BackgroundTransparency = 0.89999997615814
TextButton14.BorderSizePixel = 0
TextButton14.Font = Enum.Font.PatrickHand
TextButton14.FontSize = Enum.FontSize.Size14
TextButton14.Text = ""
TextButton14.TextColor = BrickColor.new("Medium stone grey")
TextButton14.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton14.TextScaled = true
TextButton14.TextSize = 14
TextButton14.TextWrap = true
TextButton14.TextWrapped = true
TextLabel15.Name = "On"
TextLabel15.Parent = TextButton14
TextLabel15.Position = UDim2.new(1.39912176, 0, -0.0195151884, 0)
TextLabel15.Size = UDim2.new(3.6535089, 0, 1.01951587, 0)
TextLabel15.Active = true
TextLabel15.BackgroundColor = BrickColor.new("Institutional white")
TextLabel15.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel15.BackgroundTransparency = 1
TextLabel15.BorderSizePixel = 0
TextLabel15.Selectable = true
TextLabel15.Font = Enum.Font.PatrickHand
TextLabel15.FontSize = Enum.FontSize.Size14
TextLabel15.Text = "Power Down"
TextLabel15.TextColor = BrickColor.new("Medium stone grey")
TextLabel15.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel15.TextScaled = true
TextLabel15.TextSize = 14
TextLabel15.TextWrap = true
TextLabel15.TextWrapped = true
TextLabel15.TextXAlignment = Enum.TextXAlignment.Left
TextButton16.Name = "Power"
TextButton16.Parent = Folder4
TextButton16.Position = UDim2.new(0.0792962909, 0, 0.646966636, 0)
TextButton16.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton16.BackgroundColor = BrickColor.new("Institutional white")
TextButton16.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton16.BackgroundTransparency = 0.89999997615814
TextButton16.BorderSizePixel = 0
TextButton16.Font = Enum.Font.PatrickHand
TextButton16.FontSize = Enum.FontSize.Size14
TextButton16.Text = ""
TextButton16.TextColor = BrickColor.new("Medium stone grey")
TextButton16.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton16.TextScaled = true
TextButton16.TextSize = 14
TextButton16.TextWrap = true
TextButton16.TextWrapped = true
TextLabel17.Name = "On"
TextLabel17.Parent = TextButton16
TextLabel17.Position = UDim2.new(1.39912176, 0, -0.0195151884, 0)
TextLabel17.Size = UDim2.new(3.23245716, 0, 1.01951587, 0)
TextLabel17.Active = true
TextLabel17.BackgroundColor = BrickColor.new("Institutional white")
TextLabel17.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel17.BackgroundTransparency = 1
TextLabel17.BorderSizePixel = 0
TextLabel17.Selectable = true
TextLabel17.Font = Enum.Font.PatrickHand
TextLabel17.FontSize = Enum.FontSize.Size14
TextLabel17.Text = "Toggle Enabled"
TextLabel17.TextColor = BrickColor.new("Medium stone grey")
TextLabel17.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel17.TextScaled = true
TextLabel17.TextSize = 14
TextLabel17.TextWrap = true
TextLabel17.TextWrapped = true
TextLabel17.TextXAlignment = Enum.TextXAlignment.Left
TextButton18.Name = "UpPower"
TextButton18.Parent = Folder4
TextButton18.Position = UDim2.new(0.0792962909, 0, 0.547666669, 0)
TextButton18.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton18.BackgroundColor = BrickColor.new("Institutional white")
TextButton18.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton18.BackgroundTransparency = 0.89999997615814
TextButton18.BorderSizePixel = 0
TextButton18.Font = Enum.Font.PatrickHand
TextButton18.FontSize = Enum.FontSize.Size14
TextButton18.Text = ""
TextButton18.TextColor = BrickColor.new("Medium stone grey")
TextButton18.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton18.TextScaled = true
TextButton18.TextSize = 14
TextButton18.TextWrap = true
TextButton18.TextWrapped = true
TextLabel19.Name = "On"
TextLabel19.Parent = TextButton18
TextLabel19.Position = UDim2.new(1.39912176, 0, -0.0195151884, 0)
TextLabel19.Size = UDim2.new(3.6535089, 0, 1.01951587, 0)
TextLabel19.Active = true
TextLabel19.BackgroundColor = BrickColor.new("Institutional white")
TextLabel19.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel19.BackgroundTransparency = 1
TextLabel19.BorderSizePixel = 0
TextLabel19.Selectable = true
TextLabel19.Font = Enum.Font.PatrickHand
TextLabel19.FontSize = Enum.FontSize.Size14
TextLabel19.Text = "Power Up"
TextLabel19.TextColor = BrickColor.new("Medium stone grey")
TextLabel19.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel19.TextScaled = true
TextLabel19.TextSize = 14
TextLabel19.TextWrap = true
TextLabel19.TextWrapped = true
TextLabel19.TextXAlignment = Enum.TextXAlignment.Left
TextLabel20.Name = "On"
TextLabel20.Parent = Frame1
TextLabel20.Position = UDim2.new(0.0806032568, 0, 0.101625994, 0)
TextLabel20.Size = UDim2.new(0.383138299, 0, 0.0789301917, 0)
TextLabel20.Active = true
TextLabel20.BackgroundColor = BrickColor.new("Institutional white")
TextLabel20.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel20.BackgroundTransparency = 1
TextLabel20.BorderSizePixel = 0
TextLabel20.Selectable = true
TextLabel20.Font = Enum.Font.PatrickHand
TextLabel20.FontSize = Enum.FontSize.Size14
TextLabel20.Text = "Cart statuses"
TextLabel20.TextColor = BrickColor.new("Medium stone grey")
TextLabel20.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel20.TextScaled = true
TextLabel20.TextSize = 14
TextLabel20.TextWrap = true
TextLabel20.TextWrapped = true
TextLabel21.Name = "On"
TextLabel21.Parent = Frame1
TextLabel21.Position = UDim2.new(0.0806032568, 0, 0.37940377, 0)
TextLabel21.Size = UDim2.new(0.383138299, 0, 0.0789301917, 0)
TextLabel21.Active = true
TextLabel21.BackgroundColor = BrickColor.new("Institutional white")
TextLabel21.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel21.BackgroundTransparency = 1
TextLabel21.BorderSizePixel = 0
TextLabel21.Selectable = true
TextLabel21.Font = Enum.Font.PatrickHand
TextLabel21.FontSize = Enum.FontSize.Size14
TextLabel21.Text = "Which buttons to press"
TextLabel21.TextColor = BrickColor.new("Medium stone grey")
TextLabel21.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel21.TextScaled = true
TextLabel21.TextSize = 14
TextLabel21.TextWrap = true
TextLabel21.TextWrapped = true
Frame22.Parent = Frame1
Frame22.Position = UDim2.new(0.514814794, 0, 0.101625994, 0)
Frame22.Size = UDim2.new(0.0411731899, 0, 0.896707296, 0)
Frame22.BackgroundColor = BrickColor.new("Institutional white")
Frame22.BackgroundColor3 = Color3.new(1, 1, 1)
Frame22.BackgroundTransparency = 0.89999997615814
Frame22.BorderSizePixel = 0

local TextLabel23 = Instance.new("TextLabel")
local TextButton203 = Instance.new("TextButton")

TextButton203.Name = "Regen"
TextButton203.Parent = Folder4
TextButton203.Position = UDim2.new(0.605000019, 0, 0.307999998, 0)
TextButton203.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton203.BackgroundColor = BrickColor.new("Institutional white")
TextButton203.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton203.BackgroundTransparency = 0.89999997615814
TextButton203.BorderSizePixel = 0
TextButton203.Font = Enum.Font.PatrickHand
TextButton203.FontSize = Enum.FontSize.Size14
TextButton203.Text = ""
TextButton203.TextColor = BrickColor.new("Medium stone grey")
TextButton203.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton203.TextScaled = true
TextButton203.TextSize = 14
TextButton203.TextWrap = true
TextButton203.TextWrapped = true

TextLabel23.Name = "On"
TextLabel23.Parent = TextButton203
TextLabel23.Position = UDim2.new(1.39912188, 0, -0.0195153356, 0)
TextLabel23.Size = UDim2.new(2.78527236, 0, 1.01951587, 0)
TextLabel23.Active = true
TextLabel23.BackgroundColor = BrickColor.new("Institutional white")
TextLabel23.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel23.BackgroundTransparency = 1
TextLabel23.BorderSizePixel = 0
TextLabel23.Selectable = true
TextLabel23.Font = Enum.Font.PatrickHand
TextLabel23.FontSize = Enum.FontSize.Size14
TextLabel23.Text = "Smash those regen buttons!"
TextLabel23.TextColor = BrickColor.new("Medium stone grey")
TextLabel23.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextLabel23.TextScaled = true
TextLabel23.TextSize = 14
TextLabel23.TextWrap = true
TextLabel23.TextWrapped = true
TextLabel23.TextXAlignment = Enum.TextXAlignment.Left

TextButton25 = Instance.new("TextButton")
TextBox26 = Instance.new("TextBox")
TextButton25.Name = "CertainSpeed"
TextButton25.Parent = Folder4
TextButton25.Position = UDim2.new(0.605000019, 0, 0.405000001, 0)
TextButton25.Size = UDim2.new(0.0943452492, 0, 0.0706304684, 0)
TextButton25.BackgroundColor = BrickColor.new("Institutional white")
TextButton25.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton25.BackgroundTransparency = 0.89999997615814
TextButton25.BorderSizePixel = 0
TextButton25.Font = Enum.Font.PatrickHand
TextButton25.FontSize = Enum.FontSize.Size14
TextButton25.Text = ""
TextButton25.TextColor = BrickColor.new("Medium stone grey")
TextButton25.TextColor3 = Color3.new(0.65098, 0.65098, 0.65098)
TextButton25.TextScaled = true
TextButton25.TextSize = 14
TextButton25.TextWrap = true
TextButton25.TextWrapped = true
TextBox26.Name = "txt"
TextBox26.Parent = TextButton25
TextBox26.Position = UDim2.new(1.35319304, 0, 0, 0)
TextBox26.Size = UDim2.new(2.41641617, 0, 1.00000012, 0)
TextBox26.BackgroundColor = BrickColor.new("Institutional white")
TextBox26.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox26.BackgroundTransparency = 0.89999997615814
TextBox26.BorderSizePixel = 0
TextBox26.Font = Enum.Font.PatrickHand
TextBox26.FontSize = Enum.FontSize.Size14
TextBox26.Text = ""
TextBox26.TextColor = BrickColor.new("Really black")
TextBox26.TextColor3 = Color3.new(0, 0, 0)
TextBox26.TextScaled = true
TextBox26.TextSize = 14
TextBox26.TextWrap = true
TextBox26.TextWrapped = true
TextBox26.PlaceholderText = "The speed for the carts to be at"

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
