-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/UIHelper.lua"))()
local Smart = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/Smart%20Module.lua"))()


local function dragfunction(title,main)
	spawn(function()
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
	end)
end

local function text()
	local TextLabel6 = Instance.new("TextLabel")
	TextLabel6.Name = "Text"
	TextLabel6.Position = UDim2.new(0.00999999978, 0, 0, 2)
	TextLabel6.Size = UDim2.new(1, 0, 0, 25)
	TextLabel6.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel6.BackgroundTransparency = 0.89999997615814
	TextLabel6.BorderSizePixel = 0
	TextLabel6.Font = Enum.Font.PatrickHand
	TextLabel6.FontSize = Enum.FontSize.Size24
	TextLabel6.TextColor = BrickColor.new("Silver flip/flop")
	TextLabel6.TextColor3 = Color3.new(0.552941, 0.552941, 0.552941)
	TextLabel6.TextScaled = true
	TextLabel6.TextSize = 20
	TextLabel6.TextWrap = true
	TextLabel6.TextWrapped = true
	TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
	return TextLabel6
end
local function button()
	local Frame7 = Instance.new("Frame")
	local TextButton8 = Instance.new("TextButton")
	local TextLabel9 = Instance.new("TextLabel")
	local TextLabel10 = Instance.new("TextLabel")
	Frame7.Name = "Button"
	Frame7.Position = UDim2.new(0.00999999978, 0, 0, 2)
	Frame7.Size = UDim2.new(1, 0, 0, 25)
	Frame7.BackgroundColor = BrickColor.new("Institutional white")
	Frame7.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame7.BackgroundTransparency = 0.89999997615814
	Frame7.BorderSizePixel = 0
	TextButton8.Name = "Button"
	TextButton8.Parent = Frame7
	TextButton8.Position = UDim2.new(0.0270270277, 0, 0.5, 0)
	TextButton8.Size = UDim2.new(0.0855855867, 0, 0.75999999, 0)
	TextButton8.AnchorPoint = Vector2.new(0, 0.5)
	TextButton8.BackgroundColor = BrickColor.new("Institutional white")
	TextButton8.BackgroundColor3 = Color3.new(1, 1, 1)
	TextButton8.BackgroundTransparency = 0.89999997615814
	TextButton8.BorderSizePixel = 0
	TextButton8.Font = Enum.Font.PatrickHand
	TextButton8.FontSize = Enum.FontSize.Size14
	TextButton8.Text = ""
	TextButton8.TextColor = BrickColor.new("Silver flip/flop")
	TextButton8.TextColor3 = Color3.new(0.552941, 0.552941, 0.552941)
	TextButton8.TextScaled = true
	TextButton8.TextSize = 14
	TextButton8.TextWrap = true
	TextButton8.TextWrapped = true
	TextLabel9.Parent = TextButton8
	TextLabel9.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel9.Size = UDim2.new(2.29999995, 0, 2.29999995, 0)
	TextLabel9.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel9.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel9.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel9.BackgroundTransparency = 1
	TextLabel9.BorderSizePixel = 0
	TextLabel9.Font = Enum.Font.SourceSans
	TextLabel9.FontSize = Enum.FontSize.Size14
	TextLabel9.Text = "+"
	TextLabel9.TextColor = BrickColor.new("Silver flip/flop")
	TextLabel9.TextColor3 = Color3.new(0.552941, 0.552941, 0.552941)
	TextLabel9.TextScaled = true
	TextLabel9.TextSize = 14
	TextLabel9.TextWrap = true
	TextLabel9.TextWrapped = true
	TextLabel10.Name = "Text"
	TextLabel10.Parent = Frame7
	TextLabel10.Position = UDim2.new(0.153153151, 0, -0.0799999982, 0)
	TextLabel10.Size = UDim2.new(0.846846819, 0, 0.879999995, 0)
	TextLabel10.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel10.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel10.BackgroundTransparency = 1
	TextLabel10.BorderSizePixel = 0
	TextLabel10.Font = Enum.Font.PatrickHand
	TextLabel10.FontSize = Enum.FontSize.Size14
	TextLabel10.TextColor = BrickColor.new("Silver flip/flop")
	TextLabel10.TextColor3 = Color3.new(0.552941, 0.552941, 0.552941)
	TextLabel10.TextScaled = true
	TextLabel10.TextSize = 14
	TextLabel10.TextWrap = true
	TextLabel10.TextWrapped = true
	TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
	return Frame7
end
local function toggle()
	local Frame11 = Instance.new("Frame")
	local TextButton12 = Instance.new("TextButton")
	local TextLabel13 = Instance.new("TextLabel")
	Frame11.Name = "Toggle"
	Frame11.Position = UDim2.new(0.00999999978, 0, 0, 2)
	Frame11.Size = UDim2.new(1, 0, 0, 25)
	Frame11.BackgroundColor = BrickColor.new("Institutional white")
	Frame11.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame11.BackgroundTransparency = 0.89999997615814
	Frame11.BorderSizePixel = 0
	TextButton12.Name = "Button"
	TextButton12.Parent = Frame11
	TextButton12.Position = UDim2.new(0.0270270277, 0, 0.5, 0)
	TextButton12.Size = UDim2.new(0.0855855867, 0, 0.75999999, 0)
	TextButton12.AnchorPoint = Vector2.new(0, 0.5)
	TextButton12.BackgroundColor = BrickColor.new("Institutional white")
	TextButton12.BackgroundColor3 = Color3.new(1, 1, 1)
	TextButton12.BackgroundTransparency = 0.89999997615814
	TextButton12.BorderSizePixel = 0
	TextButton12.Font = Enum.Font.PatrickHand
	TextButton12.FontSize = Enum.FontSize.Size14
	TextButton12.Text = ""
	TextButton12.TextColor = BrickColor.new("Really black")
	TextButton12.TextColor3 = Color3.new(0, 0, 0)
	TextButton12.TextScaled = true
	TextButton12.TextSize = 14
	TextButton12.TextWrap = true
	TextButton12.TextWrapped = true
	TextLabel13.Name = "Text"
	TextLabel13.Parent = Frame11
	TextLabel13.Position = UDim2.new(0.153153151, 0, -0.0799999982, 0)
	TextLabel13.Size = UDim2.new(0.846846819, 0, 0.879999995, 0)
	TextLabel13.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel13.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel13.BackgroundTransparency = 1
	TextLabel13.BorderSizePixel = 0
	TextLabel13.Font = Enum.Font.PatrickHand
	TextLabel13.FontSize = Enum.FontSize.Size14
	TextLabel13.TextColor = BrickColor.new("Silver flip/flop")
	TextLabel13.TextColor3 = Color3.new(0.552941, 0.552941, 0.552941)
	TextLabel13.TextScaled = true
	TextLabel13.TextSize = 14
	TextLabel13.TextWrap = true
	TextLabel13.TextWrapped = true
	TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
	return Frame11
end

function box()
	local TextBox14 = Instance.new("TextBox")
	TextBox14.Name = "Box"
	TextBox14.Size = UDim2.new(1, 0, 0, 25)
	TextBox14.Active = false
	TextBox14.BackgroundColor = BrickColor.new("Institutional white")
	TextBox14.BackgroundColor3 = Color3.new(1, 1, 1)
	TextBox14.BackgroundTransparency = 0.89999997615814
	TextBox14.BorderSizePixel = 0
	TextBox14.Selectable = false
	TextBox14.Font = Enum.Font.PatrickHand
	TextBox14.FontSize = Enum.FontSize.Size24
	TextBox14.Text = ""
	TextBox14.TextColor = BrickColor.new("Silver flip/flop")
	TextBox14.TextColor3 = Color3.new(0.552941, 0.552941, 0.552941)
	TextBox14.TextScaled = true
	TextBox14.TextSize = 20
	TextBox14.TextWrap = true
	TextBox14.TextWrapped = true
	TextBox14.TextXAlignment = Enum.TextXAlignment.Left
	TextBox14.PlaceholderColor3 = Color3.new(1, 1, 1)
	TextBox14.PlaceholderText = "Text here."
	return TextBox14
end
local module = {}
function module.new(TYPE,prop)
	if type(TYPE) ~= "string" then return error("1st Paramater is: List only, a string.")end
	TYPE = TYPE:lower()
	local screenGui = Instance.new("ScreenGui")
	screenGui.ResetOnSpawn = false
	Smart.ProtectGui(screenGui,true)
	if TYPE == "list" then
		local tab = {}
		local Frame1 = Instance.new("Frame")
		local TextLabel2 = Instance.new("TextLabel")
		local Frame4 = Instance.new("Frame")
		local TextButton3 = Instance.new("TextButton")
		Frame1.Parent = screenGui
		Frame1.Position = UDim2.new(0.0620549321, 0, 0.0890642628, 0)
		Frame1.Size = UDim2.new(0.112919636, 0, 0.0115670818, 0)
		Frame1.BackgroundColor = BrickColor.new("Black")
		Frame1.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
		Frame1.BorderSizePixel = 0
		
		TextLabel2.Name = "Title"
		TextLabel2.Parent = Frame1
		TextLabel2.Position = UDim2.new(0.0270270277, 0, 0, 0)
		TextLabel2.Size = UDim2.new(0.846846819, 0, 0.99999994, 0)
		TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.BorderSizePixel = 0
		TextLabel2.Font = Enum.Font.PatrickHand
		TextLabel2.FontSize = Enum.FontSize.Size14
		TextLabel2.TextColor = BrickColor.new("Medium stone grey")
		TextLabel2.TextColor3 = Color3.new(0.647059, 0.647059, 0.647059)
		TextLabel2.TextScaled = true
		TextLabel2.TextSize = 14
		TextLabel2.TextWrap = true
		TextLabel2.TextWrapped = true
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		dragfunction(TextLabel2,Frame1)
		for i,v in pairs(prop) do
			TextLabel2[i] = v
		end
		
		Frame4.Name = "GuiObjects"
		Frame4.Parent = Frame1
		Frame4.Position = UDim2.new(0, 0, 1.00000048, 0)
		Frame4.Size = UDim2.new(1, 0, 0.035713736, 0)
		Frame4.BackgroundColor = BrickColor.new("Medium brown")
		Frame4.BackgroundColor3 = Color3.new(0.243137, 0.243137, 0.243137)
		Frame4.BorderSizePixel = 0
		Frame4.AutomaticSize = "Y"
		Frame4.ClipsDescendants = false
		
		TextButton3.Name = "Toggle"
		TextButton3.Parent = Frame1
		TextButton3.Position = UDim2.new(0.873873889, 0, 0, 0)
		TextButton3.Size = UDim2.new(0.126126125, 0, 0.99999994, 0)
		TextButton3.BackgroundColor = BrickColor.new("Institutional white")
		TextButton3.BackgroundColor3 = Color3.new(1, 1, 1)
		TextButton3.BackgroundTransparency = 0.89999997615814
		TextButton3.BorderSizePixel = 0
		TextButton3.Font = Enum.Font.PatrickHand
		TextButton3.FontSize = Enum.FontSize.Size14
		TextButton3.Text = "-"
		TextButton3.TextColor = BrickColor.new("Really black")
		TextButton3.TextColor3 = Color3.new(0, 0, 0)
		TextButton3.TextScaled = true
		TextButton3.TextSize = 14
		TextButton3.TextWrap = true
		TextButton3.TextWrapped = true
		local UIListLayout5 = Instance.new("UIListLayout")
		UIListLayout5.Parent = Frame4
		UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout5.Padding = UDim.new(0, 2)
		function tab:CreateText(prop)
			local txt = text()
			for i,v in pairs(prop) do
				txt[i] = v
			end
			txt.Parent = Frame4
			txt.Text = " "..txt.Text
			return {Object = txt}
		end
		
		function tab:CreateButton(prop)
			local txt = button()
			for i,v in pairs(prop) do
				txt.Text[i] = v
			end
			local event = Smart.CreateEvent()
			txt.Button.MouseButton1Click:Connect(function()
				event:Fire()
			end)
			txt.Parent = Frame4
			event.Object = txt
			return event
		end
		
		function tab:CreateToggle(prop)
			local txt = toggle()
			for i,v in pairs(prop) do
				txt.Text[i] = v
			end
			local event = Smart.CreateEvent()
			txt.Button.MouseButton1Click:Connect(function()
				local stat = txt.Text == "X" and false or true
				txt.Button.Text = stat == false and "" or "X"
				event:Fire(stat)
			end)
			txt.Parent = Frame4
			event.Object = txt
			return event
		end
		function tab:CreateBox(prop)
			local txt = box()
			for i,v in pairs(prop) do
				txt[i] = v
			end
			local event = Smart.CreateEvent()
			txt.FocusLost:Connect(function(enterPressed,idk)
				event:Fire(txt.Button.Text,enterPressed,idk)
			end)
			txt.Parent = Frame4
			event.Object = txt
			return event
		end
		return tab
	end
end
return module
