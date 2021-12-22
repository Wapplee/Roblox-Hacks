--loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/LazyUI.lua"))()
local Smart = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/Smart%20Module.lua"))()

local n = Instance.new

local function dragfunction(title,main)
	spawn(function()
		pcall(function()
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
	end)
end

function CustomHover(button)
	button.ClipsDescendants = true
	local shadow = Instance.new("Frame")
	for _,v in pairs(button:GetChildren()) do
		v:Clone().Parent = shadow
	end
	shadow.Size = UDim2.new(1,0,1,0)
	shadow.Position = UDim2.new(0,0,0,0)
	shadow.BackgroundColor3 = Color3.fromRGB(80,80,80)
	local defaultTransparency = .7
	shadow.BackgroundTransparency = 1
	shadow.Parent = button
	button.AutoButtonTransparency = false

	button.MouseEnter:Connect(function()
		game:GetService'TweenService':Create(shadow,TweenInfo.new(.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0),{BackgroundTransparency = defaultTransparency}):Play()
	end)
	button.MouseLeave:Connect(function()
		game:GetService'TweenService':Create(shadow,TweenInfo.new(.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0),{BackgroundTransparency = 1}):Play()
	end)

end

local function text(e)
	if e == nil then
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
	elseif e == 1 then
		local UITextSizeConstraint20 = Instance.new("UITextSizeConstraint")
		local Frame18 = Instance.new'Frame'
		local TextLabel19 = Instance.new'TextLabel'
		Frame18.Name = "Text"
		Frame18.Size = UDim2.new(1, 0, 0, 20)
		Frame18.BackgroundColor = BrickColor.new("Institutional white")
		Frame18.BackgroundColor3 = Color3.new(1, 1, 1)
		Frame18.BackgroundTransparency = 1
		Frame18.BorderSizePixel = 0
		TextLabel19.Name = "txt"
		TextLabel19.Parent = Frame18
		TextLabel19.Position = UDim2.new(0.460000008, 0, 0.5, 0)
		TextLabel19.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
		TextLabel19.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel19.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel19.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel19.BackgroundTransparency = 1
		TextLabel19.BorderSizePixel = 0
		TextLabel19.Font = Enum.Font.SourceSansSemibold
		TextLabel19.FontSize = Enum.FontSize.Size14
		TextLabel19.Text = "how about you do a input of {Text = \"haha so cool\"}"
		TextLabel19.TextColor = BrickColor.new("Alder")
		TextLabel19.TextColor3 = Color3.new(0.556863, 0.419608, 1)
		TextLabel19.TextScaled = true
		TextLabel19.TextSize = 14
		TextLabel19.TextWrap = true
		TextLabel19.TextWrapped = true
		TextLabel19.TextXAlignment = Enum.TextXAlignment.Left
		UITextSizeConstraint20.Parent = TextLabel19
		UITextSizeConstraint20.MaxTextSize = 17	
		return Frame18
	end
end
local function button(e)
	if e == nil then
		local Frame7 = Instance.new("Frame")
		local TextButton8 = Instance.new("TextButton")
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
		TextButton8.BackgroundColor3 = Color3.fromRGB(14, 139, 255)
		TextButton8.BackgroundTransparency = 0
		TextButton8.AutoButtonColor = false
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
		CustomHover(TextButton8)
		Instance.new("UICorner",TextButton8)
		return Frame7
	elseif e == 1 then
		local Frame14 = Instance.new'Frame'
		local TextLabel15 = Instance.new'TextLabel'
		local UITextSizeConstraint16 = Instance.new'UITextSizeConstraint'
		local UICorner18 = Instance.new'UICorner'
		local Frame17 = Instance.new'Frame'
		local TextButton19 = Instance.new'TextButton'
		local UITextSizeConstraint20 = Instance.new'UITextSizeConstraint'
		Frame14.Name = "Button"
		Frame14.Size = UDim2.new(1, 0, 0, 20)
		Frame14.BackgroundColor = BrickColor.new("Institutional white")
		Frame14.BackgroundColor3 = Color3.new(1, 1, 1)
		Frame14.BackgroundTransparency = 1
		Frame14.BorderSizePixel = 0
		TextLabel15.Name = "txt"
		TextLabel15.Parent = Frame14
		TextLabel15.Position = UDim2.new(0.460000008, 0, 0.448978961, 0)
		TextLabel15.Size = UDim2.new(0.845007956, 0, 0.845009148, 0)
		TextLabel15.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel15.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel15.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel15.BackgroundTransparency = 1
		TextLabel15.BorderSizePixel = 0
		TextLabel15.Font = Enum.Font.SourceSans
		TextLabel15.FontSize = Enum.FontSize.Size14
		TextLabel15.Text = "Show Packapunch Gui"
		TextLabel15.TextColor = BrickColor.new("Quill grey")
		TextLabel15.TextColor3 = Color3.new(0.882353, 0.882353, 0.882353)
		TextLabel15.TextScaled = true
		TextLabel15.TextSize = 14
		TextLabel15.TextWrap = true
		TextLabel15.TextWrapped = true
		TextLabel15.TextXAlignment = Enum.TextXAlignment.Left
		UITextSizeConstraint16.Parent = TextLabel15
		UITextSizeConstraint16.MaxTextSize = 16
		Frame17.Parent = Frame14
		Frame17.Position = UDim2.new(0.0244409032, 0, 0, 0)
		Frame17.Size = UDim2.new(0.959999979, 0, 0.919999957, 0)
		Frame17.BackgroundColor = BrickColor.new("Black")
		Frame17.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
		Frame17.BorderSizePixel = 0
		UICorner18.Parent = Frame17
		UICorner18.CornerRadius = UDim.new(0.200000003, 0)
		TextButton19.Name = "Button"
		TextButton19.Parent = Frame14
		TextButton19.Size = UDim2.new(1, 0, 1, 0)
		TextButton19.BackgroundColor = BrickColor.new("Institutional white")
		TextButton19.BackgroundColor3 = Color3.new(1, 1, 1)
		TextButton19.BackgroundTransparency = 1
		TextButton19.BorderSizePixel = 0
		TextButton19.AutoButtonColor = false
		TextButton19.Font = Enum.Font.SourceSans
		TextButton19.FontSize = Enum.FontSize.Size14
		TextButton19.Text = " "
		TextButton19.TextColor = BrickColor.new("Really black")
		TextButton19.TextColor3 = Color3.new(0, 0, 0)
		TextButton19.TextScaled = true
		TextButton19.TextSize = 14
		TextButton19.TextWrap = true
		TextButton19.TextWrapped = true
		UITextSizeConstraint20.Parent = TextButton19
		UITextSizeConstraint20.MaxTextSize = 14

		TextButton19.ZIndex = 2
		TextLabel15.ZIndex = 2
		return Frame14
	end
end
local function toggle(e)
	if e == nil then
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
		TextButton12.BackgroundColor3 = Color3.new(.2,.2,.2)
		TextButton12.BackgroundTransparency = 0
		TextButton12.BorderSizePixel = 0
		TextButton12.Font = Enum.Font.PatrickHand
		TextButton12.FontSize = Enum.FontSize.Size14
		TextButton12.Text = ""
		CustomHover(TextButton12)
		TextButton12.TextColor = BrickColor.new("Really black")
		TextButton12.TextColor3 = Color3.new(0.552941, 0.552941, 0.552941)
		TextButton12.TextScaled = true
		TextButton12.TextSize = 14
		TextButton12.TextWrap = true
		TextButton12.AutoButtonColor = false
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
		Instance.new("UICorner",TextButton12)
		return Frame11
	elseif e == 1 then
		local Frame1 = Instance.new'Frame'
		local TextLabel2 = Instance.new'TextLabel'
		local UITextSizeConstraint3 = Instance.new'UITextSizeConstraint'
		local Frame4 = Instance.new'Frame'
		local UIStroke5 = Instance.new'UIStroke'
		local ImageLabel6 = Instance.new'ImageLabel'
		local Frame7 = Instance.new'Frame'
		local UICorner8 = Instance.new'UICorner'
		local TextButton9 = Instance.new'TextButton'
		local UITextSizeConstraint10 = Instance.new'UITextSizeConstraint'
		Frame1.Name = "Toggle"
		Frame1.Size = UDim2.new(1, 0, 0, 20)
		Frame1.BackgroundColor = BrickColor.new("Institutional white")
		Frame1.BackgroundColor3 = Color3.new(1, 1, 1)
		Frame1.BackgroundTransparency = 1
		Frame1.BorderSizePixel = 0
		TextLabel2.Name = "txt"
		TextLabel2.Parent = Frame1
		TextLabel2.Position = UDim2.new(0.460000008, 0, 0.448978961, 0)
		TextLabel2.Size = UDim2.new(0.845007956, 0, 0.845009148, 0)
		TextLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.BorderSizePixel = 0
		TextLabel2.Font = Enum.Font.SourceSans
		TextLabel2.FontSize = Enum.FontSize.Size14
		TextLabel2.Text = "Show Packapunch Gui"
		TextLabel2.TextColor = BrickColor.new("Quill grey")
		TextLabel2.TextColor3 = Color3.new(0.882353, 0.882353, 0.882353)
		TextLabel2.TextScaled = true
		TextLabel2.TextSize = 14
		TextLabel2.TextWrap = true
		TextLabel2.TextWrapped = true
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		UITextSizeConstraint3.Parent = TextLabel2
		UITextSizeConstraint3.MaxTextSize = 16
		Frame4.Name = "Show"
		Frame4.Parent = Frame1
		Frame4.Position = UDim2.new(0.949999988, 0, 0.5, 0)
		Frame4.Size = UDim2.new(0.0259281301, 0, 0.600000024, 0)
		Frame4.Active = true
		Frame4.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame4.BackgroundColor = BrickColor.new("Black")
		Frame4.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
		Frame4.BorderSizePixel = 0
		Frame4.Selectable = true
		UIStroke5.Parent = Frame4
		UIStroke5.Color = Color3.new(0.556863, 0.419608, 1)
		UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		ImageLabel6.Name = "check"
		ImageLabel6.Parent = Frame4
		ImageLabel6.Visible = false
		ImageLabel6.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel6.BackgroundColor = BrickColor.new("Institutional white")
		ImageLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
		ImageLabel6.BackgroundTransparency = 1
		ImageLabel6.BorderSizePixel = 0
		ImageLabel6.Image = "rbxassetid://8310120017"
		ImageLabel6.ScaleType = Enum.ScaleType.Fit
		ImageLabel6.ImageColor3 = Color3.new(1,1,1)
		Frame7.Parent = Frame1
		Frame7.Position = UDim2.new(0.0244409032, 0, 0, 0)
		Frame7.Size = UDim2.new(0.959999979, 0, 0.919999957, 0)
		Frame7.BackgroundColor = BrickColor.new("Black")
		Frame7.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
		Frame7.BorderSizePixel = 0
		UICorner8.Parent = Frame7
		UICorner8.CornerRadius = UDim.new(0.200000003, 0)
		TextButton9.Name = "Button"
		TextButton9.Parent = Frame1
		TextButton9.Size = UDim2.new(1, 0, 1, 0)
		TextButton9.BackgroundColor = BrickColor.new("Institutional white")
		TextButton9.BackgroundColor3 = Color3.new(1, 1, 1)
		TextButton9.BackgroundTransparency = 1
		TextButton9.BorderSizePixel = 0
		TextButton9.ZIndex = 100
		TextButton9.AutoButtonColor = false
		TextButton9.Font = Enum.Font.SourceSans
		TextButton9.FontSize = Enum.FontSize.Size14
		TextButton9.Text = " "
		TextButton9.TextColor = BrickColor.new("Really black")
		TextButton9.TextColor3 = Color3.new(0, 0, 0)
		TextButton9.TextScaled = true
		TextButton9.TextSize = 14
		TextButton9.TextWrap = true
		TextButton9.TextWrapped = true
		UITextSizeConstraint10.Parent = TextButton9
		UITextSizeConstraint10.MaxTextSize = 14
		
		TextButton9.ZIndex = 2
		Frame4.ZIndex = 2
		TextLabel2.ZIndex = 2
		return Frame1
	end
end

function box(e)
	if e == nil then
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
		TextBox14.TextColor3 = Color3.new(.6,.6,.6)
		TextBox14.TextScaled = true
		TextBox14.TextSize = 20
		TextBox14.TextWrap = true
		TextBox14.TextWrapped = true
		TextBox14.TextXAlignment = Enum.TextXAlignment.Left
		TextBox14.PlaceholderColor3 = Color3.new(.7,.7,.7)
		TextBox14.PlaceholderText = "Text here."
		return TextBox14
	elseif e == 1 then
		local Frame21 = Instance.new'Frame'
		local TextLabel22 = Instance.new'TextLabel'
		local UITextSizeConstraint23 = Instance.new'UITextSizeConstraint'
		local Frame24 = Instance.new'Frame'
		local UICorner25 = Instance.new'UICorner'
		local UICorner27 = Instance.new'UICorner'
		local TextBox26 = Instance.new'TextBox'
		local UIStroke28 = Instance.new'UIStroke'
		local UITextSizeConstraint29 = Instance.new'UITextSizeConstraint'
		Frame21.Name = "Box"
		Frame21.Size = UDim2.new(1, 0, 0, 20)
		Frame21.BackgroundColor = BrickColor.new("Institutional white")
		Frame21.BackgroundColor3 = Color3.new(1, 1, 1)
		Frame21.BackgroundTransparency = 1
		Frame21.BorderSizePixel = 0
		TextLabel22.Name = "txt"
		TextLabel22.Parent = Frame21
		TextLabel22.Position = UDim2.new(0.278220773, 0, 0.448978961, 0)
		TextLabel22.Size = UDim2.new(0.481449515, 0, 0.845009148, 0)
		TextLabel22.AnchorPoint = Vector2.new(0.5, 0.5)
		TextLabel22.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel22.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel22.BackgroundTransparency = 1
		TextLabel22.BorderSizePixel = 0
		TextLabel22.Font = Enum.Font.SourceSans
		TextLabel22.FontSize = Enum.FontSize.Size14
		TextLabel22.Text = "Show Packapunch Gui"
		TextLabel22.TextColor = BrickColor.new("Quill grey")
		TextLabel22.TextColor3 = Color3.new(0.882353, 0.882353, 0.882353)
		TextLabel22.TextScaled = true
		TextLabel22.TextSize = 14
		TextLabel22.TextWrap = true
		TextLabel22.TextWrapped = true
		TextLabel22.TextXAlignment = Enum.TextXAlignment.Left
		UITextSizeConstraint23.Parent = TextLabel22
		UITextSizeConstraint23.MaxTextSize = 16
		Frame24.Parent = Frame21
		Frame24.Position = UDim2.new(0.0244409032, 0, 0, 0)
		Frame24.Size = UDim2.new(0.959999979, 0, 0.919999957, 0)
		Frame24.BackgroundColor = BrickColor.new("Black")
		Frame24.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
		Frame24.BorderSizePixel = 0
		Frame24.ZIndex = 0
		UICorner25.Parent = Frame24
		UICorner25.CornerRadius = UDim.new(0.200000003, 0)
		TextBox26.Name = "Box"
		TextBox26.Parent = Frame21
		TextBox26.Position = UDim2.new(0.491873205, 0, 0.102040812, 0)
		TextBox26.Size = UDim2.new(0.473053694, 0, 0.649999976, 0)
		TextBox26.BackgroundColor = BrickColor.new("Black")
		TextBox26.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
		TextBox26.BorderSizePixel = 0
		TextBox26.Font = Enum.Font.SourceSans
		TextBox26.FontSize = Enum.FontSize.Size14
		TextBox26.Text = ""
		TextBox26.TextColor = BrickColor.new("Really black")
		TextBox26.TextColor3 = Color3.new(0, 0, 0)
		TextBox26.TextScaled = true
		TextBox26.TextSize = 14
		TextBox26.TextWrap = true
		TextBox26.TextWrapped = true
		TextBox26.TextXAlignment = Enum.TextXAlignment.Left
		TextBox26.ClearTextOnFocus = false
		TextBox26.PlaceholderText = "Hello!"
		UICorner27.Parent = TextBox26
		UICorner27.CornerRadius = UDim.new(0.200000003, 0)
		UIStroke28.Parent = TextBox26
		UIStroke28.Color = Color3.new(0.556863, 0.419608, 1)
		UIStroke28.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UITextSizeConstraint29.Parent = TextBox26
		UITextSizeConstraint29.MaxTextSize = 12
		return Frame21
	end
end
local module = {}

function module.new(TYPE,prop)
	if type(TYPE) ~= "string" then return error("1st Paramater is: List only, a string.")end
	TYPE = TYPE:lower()
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = tostring(Random.new():NextNumber(0,99999))
	screenGui.ResetOnSpawn = false
	screenGui.DisplayOrder = 999999
	Smart.ProtectGui(screenGui,true)	
	if TYPE == "list" then
		if _G.jnkjbnkjnk == nil then _G.jnkjbnkjnk = -1 end
		_G.jnkjbnkjnk = _G.jnkjbnkjnk + 1
		local tab = {}
		local Frame1 = Instance.new("Frame")
		local TextLabel2 = Instance.new("TextLabel")
		local Frame4 = Instance.new("Frame")
		local TextButton3 = Instance.new("TextButton")
		Frame1.Parent = screenGui
		Frame1.Position = UDim2.new(0.0320549321+((_G.jnkjbnkjnk%9)*0.1), 0, 0.0490642628*(1+(math.floor(_G.jnkjbnkjnk/9))), 0)
		Frame1.Size = UDim2.new(0.097, 0,0.020, 0)
		Frame1.BackgroundColor = BrickColor.new("Black")
		Frame1.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
		Frame1.BorderSizePixel = 0

		TextLabel2.Name = "Title"
		TextLabel2.Parent = Frame1
		TextLabel2.Position = UDim2.new(0.0270270277, 0, 0, 0)
		TextLabel2.Size = UDim2.new(0.846846819, 0, 0.99999994, 0)
		TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel2.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
		TextLabel2.BackgroundTransparency = 0
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
		for i,v in pairs(prop or {}) do
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
		Frame4.Visible = false

		TextButton3.Name = "Toggle"
		TextButton3.Parent = Frame1
		TextButton3.Position = UDim2.new(0.873873889, 0, 0, 0)
		TextButton3.Size = UDim2.new(0.126126125, 0, 0.99999994, 0)
		TextButton3.BackgroundColor3 = Color3.new(.3,.3,.3)
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
		TextButton3.MouseButton1Click:Connect(function()
			Frame4.Visible = not Frame4.Visible
		end)
		local UIListLayout5 = Instance.new("UIListLayout")
		UIListLayout5.Parent = Frame4
		UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout5.Padding = UDim.new(0, 2)

		function tab:Remove()
			Frame1:Remove()
		end
		function tab:remove()tab:Remove()end
		function tab:Destroy()tab:Remove()end
		function tab:destroy()tab:Remove()end


		function tab:SetProperties(p)
			for i,v in pairs(p or {}) do
				TextLabel2[i] = v
			end
		end
		function tab:CreateText(prop)
			local txt = text()
			for i,v in pairs(prop or {}) do
				txt[i] = v
			end
			txt.Parent = Frame4
			txt.Text = " "..txt.Text
			local tre = {Object = txt}
			function tre:SetProperties(p)
				for i,v in pairs(prop or {}) do
					txt[i] = v
				end
			end
			function tre:Remove()
				txt:Remove()
			end
			function tre:remove()tre:Remove()end
			function tre:Destroy()tre:Remove()end
			function tre:destroy()tre:Remove()end
			return tre
		end

		function tab:CreateButton(prop)
			local txt = button()
			for i,v in pairs(prop or {}) do
				txt.Text[i] = v
			end
			local event = Smart.CreateEvent()
			txt.Button.MouseButton1Click:Connect(function()
				event:Fire()
			end)
			txt.Parent = Frame4
			event.Object = txt
			function event:SetProperties(p)
				for i,v in pairs(p or {}) do
					txt.Text[i] = v
				end
			end
			function event:Remove()
				txt:Remove()
			end
			function event:remove()event:Remove()end
			function event:Destroy()event:Remove()end
			function event:destroy()event:Remove()end
			return event
		end

		function tab:CreateToggle(prop,PreOn)
			local txt = toggle()
			for i,v in pairs(prop or{}) do
				txt.Text[i] = v
			end
			local event = Smart.CreateEvent()
			local stat = PreOn or false
			txt.Button.MouseButton1Click:Connect(function()
				stat = not stat
				local clr = (stat == true and Color3.new(.4,.8,.4) or Color3.new(.2,.2,.2))
				game:GetService'TweenService':Create(txt.Button,TweenInfo.new(.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0),{BackgroundColor3 = clr}):Play()
				event:Fire(stat)
			end)
			txt.Parent = Frame4
			event.Object = txt
			function event:Remove()
				txt:Remove()
			end
			function event:remove()event:Remove()end
			function event:Destroy()event:Remove()end
			function event:destroy()event:Remove()end
			function event:SetProperties(p)
				for i,v in pairs(p or {}) do
					txt.Text[i] = v
				end
			end
			return event
		end
		function tab:CreateBox(prop)
			local txt = box()
			for i,v in pairs(prop or {}) do
				txt[i] = v
			end
			local event = Smart.CreateEvent()
			txt.FocusLost:Connect(function(enterPressed,idk)
				event:Fire(txt.Text,enterPressed,idk)
			end)
			txt.Parent = Frame4
			event.Object = txt
			function event:SetProperties(p)
				for i,v in pairs(p or {}) do
					txt[i] = v
				end
			end
			function event:Remove()
				txt:Remove()
			end
			function event:remove()event:Remove()end
			function event:Destroy()event:Remove()end
			function event:destroy()event:Remove()end
			return event
		end
		return tab
	elseif TYPE == "classic" then
		local Frame38 = n'Frame'
		local UICorner39 = n'UICorner'
		local TextLabel40 = n'TextLabel'
		local UICorner41 = n'UICorner'
		local UIPadding42 = n'UIPadding'
		local UIStroke43 = n'UIStroke'
		local Frame44 = n'Frame'
		local ScrollingFrame45 = n'ScrollingFrame'
		local UIListLayout46 = n'UIListLayout'
		local UICorner47 = n'UICorner'
		local ScrollingFrame48 = n'ScrollingFrame'
		local UIListLayout49 = n'UIListLayout'
		local Frame50 = n'Frame'

		Frame38.Name = "Backframe"
		Frame38.Parent = screenGui
		Frame38.Position = UDim2.new(0.370676279, 0, 0.355029583, 0)
		Frame38.Size = UDim2.new(0.258647382, 0, 0.289940834, 0)
		Frame38.BackgroundColor = BrickColor.new("Black metallic")
		Frame38.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
		Frame38.BorderSizePixel = 0
		Frame38.ClipsDescendants = true
		UICorner39.Parent = Frame38
		UICorner39.CornerRadius = UDim.new(0, 4)
		TextLabel40.Name = "Title"
		TextLabel40.Parent = Frame38
		TextLabel40.Position = UDim2.new(0.0139719956, 0, 0.0306122452, 0)
		TextLabel40.Size = UDim2.new(0.25349316, 0, 0.0680272132, 0)
		TextLabel40.BackgroundColor = BrickColor.new("Black")
		TextLabel40.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
		TextLabel40.BorderSizePixel = 0
		TextLabel40.Font = Enum.Font.SourceSans
		TextLabel40.FontSize = Enum.FontSize.Size14
		TextLabel40.Text = "you didnt name this :/"
		TextLabel40.TextColor = BrickColor.new("Institutional white")
		TextLabel40.TextColor3 = Color3.new(1, 1, 1)
		TextLabel40.TextScaled = true
		TextLabel40.TextSize = 14
		TextLabel40.TextWrap = true
		TextLabel40.TextWrapped = true
		TextLabel40.TextXAlignment = Enum.TextXAlignment.Left


		dragfunction(Frame38)


		UICorner41.Parent = TextLabel40
		UICorner41.CornerRadius = UDim.new(0.125, 0)
		UIPadding42.Parent = TextLabel40
		UIPadding42.PaddingLeft = UDim.new(0.0199999996, 0)
		UIStroke43.Parent = Frame38
		UIStroke43.Color = Color3.new(0.556863, 0.419608, 1)
		UIStroke43.LineJoinMode = Enum.LineJoinMode.Miter
		Frame44.Name = "Menus"
		Frame44.Parent = Frame38
		Frame44.Position = UDim2.new(0.140718699, 0, 0.547619045, 0)
		Frame44.Size = UDim2.new(0.25349316, 0, 0.833333313, 0)
		Frame44.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame44.BackgroundColor = BrickColor.new("Black")
		Frame44.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
		Frame44.BorderSizePixel = 0
		ScrollingFrame45.Name = "Scroll"
		ScrollingFrame45.Parent = Frame44
		ScrollingFrame45.Position = UDim2.new(0.49999997, 0, 0.510204077, 0)
		ScrollingFrame45.Size = UDim2.new(0.900000036, 0, 0.939591885, 0)
		ScrollingFrame45.Active = true
		ScrollingFrame45.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingFrame45.BackgroundColor = BrickColor.new("Black metallic")
		ScrollingFrame45.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
		ScrollingFrame45.BorderSizePixel = 0
		ScrollingFrame45.CanvasSize = UDim2.new(0, 0, 0, 0)
		ScrollingFrame45.ScrollBarThickness = 6
		ScrollingFrame45.ScrollingDirection = Enum.ScrollingDirection.Y
		UIListLayout46.Parent = ScrollingFrame45
		UIListLayout46.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout46.SortOrder = Enum.SortOrder.LayoutOrder
		UICorner47.Parent = Frame44
		UICorner47.CornerRadius = UDim.new(0.0299999993, 0)
		ScrollingFrame48.Name = "Selections"
		ScrollingFrame48.Parent = Frame38
		ScrollingFrame48.Position = UDim2.new(0.630738676, 0, 0.507448971, 0)
		ScrollingFrame48.Size = UDim2.new(0.666666925, 0, 0.91367346, 0)
		ScrollingFrame48.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingFrame48.BackgroundColor = BrickColor.new("Black")
		ScrollingFrame48.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
		ScrollingFrame48.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
		ScrollingFrame48.BorderSizePixel = 0
		ScrollingFrame48.Selectable = false
		ScrollingFrame48.CanvasSize = UDim2.new(0, 0, 1, 0)
		ScrollingFrame48.ScrollBarThickness = 0
		UIListLayout49.Parent = ScrollingFrame48
		UIListLayout49.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout49.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout49.Padding = UDim.new(0, 5)
		Frame50.Name = "decoration"
		Frame50.Parent = Frame38
		Frame50.Position = UDim2.new(0.297405213, 0, 0.0306122452, 0)
		Frame50.Size = UDim2.new(0.666999996, 0, 0.0199999996, 0)
		Frame50.BackgroundColor = BrickColor.new("Black")
		Frame50.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
		Frame50.BorderSizePixel = 0


		local function newSection()
			local Frame30 = n'Frame'
			local UIScale31 = n'UIScale'
			local UIListLayout33 = n 'UIListLayout'
			local UICorner32 = n'UICorner'
			Frame30.Name = "Selection"
			Frame30.AutomaticSize = "Y"
			Frame30.Parent = ScrollingFrame48
			Frame30.Size = UDim2.new(1, 0, 0, 0)
			Frame30.BackgroundColor = BrickColor.new("Black metallic")
			Frame30.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
			Frame30.BorderSizePixel = 0
			UIScale31.Parent = Frame30
			UIScale31.Scale = 0.98000001907349
			UICorner32.Parent = Frame30
			UICorner32.CornerRadius = UDim.new(0.100000001, 0)
			UIListLayout33.Parent = Frame30
			UIListLayout33.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout33.Padding = UDim.new(0, 5)	
			return Frame30
		end
		local function newMenu(ptre)
			local Frame34=n'Frame'
			local TextButton35=n'TextButton'
			local UICorner36=n'UICorner'
			local UITextSizeConstraint37 = n'UITextSizeConstraint'
			Frame34.Name = "Menu"
			Frame34.Parent = ScrollingFrame45
			Frame34.Position = UDim2.new(0.0363081545, 0, 0, 0)
			Frame34.Size = UDim2.new(0.926999986, 0, 0, 31)
			Frame34.Active = true
			Frame34.BackgroundColor = BrickColor.new("Black")
			Frame34.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
			Frame34.BackgroundTransparency = 1
			Frame34.BorderSizePixel = 0
			Frame34.Selectable = true
			TextButton35.Name = "Button"
			TextButton35.AutoButtonColor = false
			TextButton35.Parent = Frame34
			TextButton35.Position = UDim2.new(-0.00812141318, 0, 0.225806445, 0)
			TextButton35.Size = UDim2.new(1, 0, 0.774193525, 0)
			TextButton35.BackgroundColor = BrickColor.new("Black")
			TextButton35.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
			TextButton35.BorderSizePixel = 0
			TextButton35.Font = Enum.Font.SourceSansSemibold
			TextButton35.FontSize = Enum.FontSize.Size14
			TextButton35.Text = "Main"
			for i,v in pairs(ptre or {}) do
				TextButton35[i] = v	
			end
			TextButton35.TextColor = BrickColor.new("Alder")
			TextButton35.TextColor3 = Color3.new(0.556863, 0.419608, 1)
			TextButton35.TextScaled = true
			TextButton35.TextSize = 14
			TextButton35.TextWrap = true
			TextButton35.TextWrapped = true
			UICorner36.Parent = TextButton35
			UICorner36.CornerRadius = UDim.new(0.200000003, 0)
			UITextSizeConstraint37.Parent = TextButton35
			UITextSizeConstraint37.MaxTextSize = 14
			return Frame34
		end
		local tab = {}
		function tab:SetProperties(p)
			for i,v in pairs(p or {}) do
				TextLabel40[i] = v
			end
			return true
		end
		tab:SetProperties(prop)
		local TIME = 0
		local selected
		function tab:CreateSection(PRop)
			TIME+=1
			local Tab = {}
			local sec = newSection()
			local menu = newMenu(PRop)
			if TIME ~= 1 then
				sec.Visible = false
			else
				selected = {menu,sec}
				selected[1].Button.BackgroundColor3 = Color3.new(0.202941, 0.202941, 0.202941)
			end
			menu.Button.MouseButton1Click:Connect(function()
				if selected[1] == menu then return end
				selected[1].Button.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
				selected[2].Visible = false
				selected = {menu,sec}
				selected[1].Button.BackgroundColor3 = Color3.new(0.202941, 0.202941, 0.202941)
				selected[2].Visible = true
			end)
			function Tab:CreateText(prop)
				local txt = text(1)
				local tab = {obj = txt}
				txt.Parent = sec
				function tab:SetProperties(p)
					for i,v in pairs(p or {}) do
						txt.txt[i] = v
					end
					return true
				end
				function tab:remove()
					txt:Remove()
				end
				function tab:Remove()tab:remove()end
				function tab:destroy()tab:remove()end
				function tab:Destroy()tab:remove()end
				tab:SetProperties(prop)
				return tab
			end
			function Tab:CreateButton(prop)
				local txt = button(1)
				local tab = Smart.CreateEvent()
				tab.obj = txt
				txt.Parent = sec
				function tab:SetProperties(p)
					for i,v in pairs(p or {}) do
						txt.txt[i] = v
					end
					return true
				end
				txt.Button.MouseButton1Click:Connect(function()
					tab:Fire()
				end)
				function tab:remove()
					txt:Remove()
				end
				function tab:Remove()tab:remove()end
				function tab:destroy()tab:remove()end
				function tab:Destroy()tab:remove()end
				tab:SetProperties(prop)
				return tab
			end
			function Tab:CreateToggle(prop)
				local txt = toggle(1)
				local tab = Smart.CreateEvent()
				tab.obj = txt
				txt.Parent = sec
				function tab:SetProperties(p)
					for i,v in pairs(p or {}) do
						txt.txt[i] = v
					end
					return true
				end
				function tab:remove()
					txt:Remove()
				end
				function tab:Remove()tab:remove()end
				function tab:destroy()tab:remove()end
				function tab:Destroy()tab:remove()end
				txt.Show.check.ImageTransparency = 1
				txt.Show.check.ZIndex = 3
				local tog = false
				txt.Button.MouseButton1Click:Connect(function()
					tog = not tog
					print(tog == true and 0 or 1)
					game:GetService("TweenService"):Create(txt.Show.check,TweenInfo.new(.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,.01),{ImageTransparency = (tog == true and 0 or 1)}):Play()
					tab:Fire(tog)
				end)
				function tab:GetStatus()
					return tog
				end
				tab:SetProperties(prop)
				return tab
			end
			--[[function Tab:CreateText(prop)
				local txt = text(1)
				local tab = {obj = txt}
				txt.Parent = sec
				function tab:SetProperties(p)
					for i,v in pairs(p or {}) do
						txt.txt[i] = v
					end
					return true
				end
				function tab:remove()
					txt:Remove()
				end
				function tab:Remove()tab:remove()end
				function tab:destroy()tab:remove()end
				function tab:Destroy()tab:remove()end
				tab:SetProperties(prop)
				return tab
			end]]
			return Tab
		end
		return tab
	end
end
return module
