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

local module = {}
function module.new(prop)
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.ResetOnSpawn = false
	Smart.ProtectGui(ScreenGui)
	for i,v in pairs(prop) do
		ScreenGui[i] = v
	end
	return {CreateList = function(self,prop)
		local Frame1 = Instance.new("Frame")
		local TextLabel2 = Instance.new("TextLabel")
		local TextButton3 = Instance.new("TextButton")
		local Frame4 = Instance.new("Frame")
		local UIListLayout5 = Instance.new("UIListLayout")
		Frame1.Position = UDim2.new(0.0620549321, 0, 0.0890642628, 0)
		Frame1.Size = UDim2.new(0.087, 0, 0.0215670818, 0)
		Frame1.BackgroundColor = BrickColor.new("Black")
		Frame1.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
		Frame1.BorderSizePixel = 0
		Frame1.Name = "Backframe"
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
		Frame4.Name = "GuiObjects"
		Frame4.Parent = Frame1
		Frame4.Position = UDim2.new(0, 0, 1,0)
		Frame4.Size = UDim2.new(1, 0, 0.035713736, 0)
		Frame4.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
		Frame4.BorderSizePixel = 0
		Frame4.AutomaticSize = "Y"
		UIListLayout5.Parent = Frame4
		UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout5.Padding = UDim.new(0, 2)
		Frame1.Parent = ScreenGui
		
		
		dragfunction(TextLabel2,Frame1)
		TextButton3.MouseButton1Click:Connect(function()
			Frame4.Visible = not Frame4.Visible
		end)
		
		for i,v in pairs(prop or {}) do
			TextLabel2[i] = v
		end
		
		local mOD = {Backframe = Frame1}
		function mOD:CreateBox(prop)
			local TextBox1 = Instance.new("TextBox")
			TextBox1.Name = "Box"
			TextBox1.Size = UDim2.new(1, 0, 0, 25)
			TextBox1.Active = false
			TextBox1.BackgroundColor = BrickColor.new("Institutional white")
			TextBox1.BackgroundColor3 = Color3.new(1, 1, 1)
			TextBox1.BackgroundTransparency = 0.89999997615814
			TextBox1.BorderSizePixel = 0
			TextBox1.Selectable = false
			TextBox1.Font = Enum.Font.PatrickHand
			TextBox1.FontSize = Enum.FontSize.Size24
			TextBox1.Text = ""
			TextBox1.TextColor = BrickColor.new("Silver flip/flop")
			TextBox1.TextColor3 = Color3.new(0.552941, 0.552941, 0.552941)
			TextBox1.TextScaled = true
			TextBox1.TextSize = 20
			TextBox1.TextWrap = true
			TextBox1.TextWrapped = true
			TextBox1.TextXAlignment = Enum.TextXAlignment.Left
			TextBox1.PlaceholderText = "Text here."
			TextBox1.PlaceholderColor3 = Color3.fromRGB(255,255,255)
			TextBox1.TextColor3 = Color3.fromRGB(150,150,150)
			
			TextBox1.Parent = Frame4
			local MOD = {func = function()end,Ins = TextBox1}
			MOD.Connect = function(self,func)
				self.func = func
				local MOD2 = {}
				MOD2.Disconnect = function()
					self.func = function()end
				end
				return {}
			end
			function MOD:SetProperties(p)
				for i,v in pairs(p) do
					TextBox1[i] = v
				end
			end
			MOD:SetProperties(prop or {})
			TextBox1.FocusLost:Connect(function(a,b)
				MOD.func(TextBox1.Text,a,b)
			end)
			return MOD
		end
		function mOD:CreateButton(prop)
			local ButtonObject = Instance.new("Frame")
			local TextButton8 = Instance.new("TextButton")
			local TextLabel9 = Instance.new("TextLabel")
			local TextLabel10 = Instance.new("TextLabel")
			ButtonObject.Name = "Button"
			ButtonObject.Parent = Frame4
			ButtonObject.Position = UDim2.new(0.00999999978, 0, 0, 2)
			ButtonObject.Size = UDim2.new(1, 0, 0, 25)
			ButtonObject.BackgroundColor = BrickColor.new("Institutional white")
			ButtonObject.BackgroundColor3 = Color3.new(1, 1, 1)
			ButtonObject.BackgroundTransparency = 0.89999997615814
			ButtonObject.BorderSizePixel = 0
			--
			TextButton8.Name = "Button"
			TextButton8.Parent = ButtonObject
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
			--
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
			--
			TextLabel10.Name = "Text"
			TextLabel10.Parent = ButtonObject
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
			
			ButtonObject.Parent = Frame4
			local MOD = {func = function()end,Ins = ButtonObject}
			MOD.Connect = function(self,func)
				self.func = func
				local MOD2 = {}
				MOD2.Disconnect = function()
					self.func = function()end
				end
				return {}
			end
			function MOD:SetProperties(p)
				for i,v in pairs(p) do
					TextLabel10[i] = v
				end
			end
			MOD:SetProperties(prop or {})
			TextButton8.MouseButton1Down:Connect(function()
				MOD.func()
			end)
			return MOD
		end
		function mOD:CreateToggle(prop)
			local ToggleObject = Instance.new("Frame")
			local TextButton12 = Instance.new("TextButton")
			local TextLabel13 = Instance.new("TextLabel")
			ToggleObject.Name = "Toggle"
			ToggleObject.Parent = Frame4
			ToggleObject.Position = UDim2.new(0.00999999978, 0, 0, 2)
			ToggleObject.Size = UDim2.new(1, 0, 0, 25)
			ToggleObject.BackgroundColor = BrickColor.new("Institutional white")
			ToggleObject.BackgroundColor3 = Color3.new(1, 1, 1)
			ToggleObject.BackgroundTransparency = 0.89999997615814
			ToggleObject.BorderSizePixel = 0
			--
			TextButton12.Name = "Button"
			TextButton12.Parent = ToggleObject
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
			TextButton12.TextColor3 = Color3.new(.5,.5,.5)
			TextButton12.TextScaled = true
			TextButton12.TextSize = 14
			TextButton12.TextWrap = true
			TextButton12.TextWrapped = true
			--
			TextLabel13.Name = "Text"
			TextLabel13.Parent = ToggleObject
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
			ToggleObject.Parent = Frame4
			local MOD = {func = function()end,Ins = ToggleObject}
			MOD.Connect = function(self,func)
				self.func = func
				local MOD2 = {}
				MOD2.Disconnect = function()
					self.func = function()end
				end
				return {}
			end
			function MOD:SetProperties(p)
				for i,v in pairs(p) do
					TextLabel13[i] = v
				end
			end
			MOD:SetProperties(prop or {})
			TextButton12.MouseButton1Down:Connect(function()
				local stat = (TextButton12.Text == "X" and true or false)
				TextButton12.Text = stat == false and "X" or ""
				MOD.func(not stat)
			end)
			function MOD:GetStatus()
				return (TextButton12.Text == "X" and true or false)
			end
			return MOD
		end
		function mOD:CreateText(prop)
			local TextObject = Instance.new("TextLabel")
			TextObject.Name = "Text"
			TextObject.Parent = Frame4
			TextObject.Position = UDim2.new(0.00999999978, 0, 0, 2)
			TextObject.Size = UDim2.new(1, 0, 0, 25)
			TextObject.BackgroundColor = BrickColor.new("Institutional white")
			TextObject.BackgroundColor3 = Color3.new(1, 1, 1)
			TextObject.BackgroundTransparency = 0.89999997615814
			TextObject.BorderSizePixel = 0
			TextObject.Font = Enum.Font.PatrickHand
			TextObject.FontSize = Enum.FontSize.Size24
			TextObject.TextColor = BrickColor.new("Silver flip/flop")
			TextObject.TextColor3 = Color3.new(.7,.7,.7)
			TextObject.TextScaled = true
			TextObject.TextSize = 20
			TextObject.TextWrap = true
			TextObject.TextWrapped = true
			TextObject.TextXAlignment = Enum.TextXAlignment.Left	
			TextObject.Parent = Frame4
			
			local MOD = {Ins = TextObject}
			function MOD:SetProperties(p)
				for i,v in pairs(p) do
					TextObject[i] = v
				end
			end
			MOD:SetProperties(prop or {})
			TextObject.Text = " "..TextObject.Text
			function MOD:SetText(txt)
				TextObject.Text = txt
			end
			return MOD
		end
		return mOD
		end,Ins = ScreenGui}
end
return module
