--loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/Smart%20Module.lua"))()
-- // Resources //--
local function getLink(link)
	return loadstring(game:HttpGet(link))()
end


-- // END OF RESOURCES // --

-- // Draggable
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
			return
		end
	end)
end
-- //
-- // Teleport
local function teleport(typ)
	local char = game:GetService("Players").LocalPlayer.Character
	if not char then return end
	if typeof(typ) == "Vector3" then
		char:SetPrimaryPartCFrame(CFrame.new(typ))
	elseif typeof(typ) == "CFrame" then
		char:SetPrimaryPartCFrame(typ)
	end
	return
end

--// Protect Gui
local function protectgui(gui,use)
	local method = gethui
	local method2 = protect_gui
	local parent = game:GetService("CoreGui")
	if method then
		parent = method()
		if use then
			gui.Parent = parent	
		end
	end
	if method2 then
		method2(gui)
		if use then
			gui.Parent = parent	
		end
	end
	return parent
end
return {
Drag = drag,
Player = game:GetService("Players").LocalPlayer,
Copy = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set) or warn('// Your executor does not support the feature: Copying. //'),
Teleport = teleport,
Notification = getLink'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/Notifications%20Script.lua',
Noclip = getLink'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/Noclip.lua',
ExecuteLink = getLink,
ProtectGui = protectgui,
}
