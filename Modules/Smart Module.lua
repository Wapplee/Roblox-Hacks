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
local function fireconnections(event,args)
	local g = getconnections
	if g then
		for i, v in next, g(event) do
			v:Fire(unpack(args or {}))
		end
	else
		return error("Client does not support getconnections!")
	end
	return getconnections(event)
end

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
	end
	if method2 then
		method2(gui)
	end
	if use then
		gui.Parent = parent	
	end
	return parent
end

--// Teleport to a new game
local function teleportgame(id)
	return game:GetService"TeleportService":Teleport(id,game:GetService("Players").LocalPlayer)	
end

--// Queue Script
local function queuescript(sc)
	if syn then
		return syn.queue_on_teleport(sc)
	else
		return error'Exploit does not support queue on teleport!'
	end
end
return {
Drag = drag,
Player = game:GetService("Players").LocalPlayer,
Copy = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set) or warn('// Your executor does not support the feature: Copying. //'),
Teleport = teleport,
Notification = getLink'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/Notifications%20Script.lua', -- Notifications.
Noclip = getLink'https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Wapplee/Noclip.lua', -- Noclip(true) Noclip(false) Noclip() true = enable, false = disable, and nothing toggles.
ExecuteLink = getLink, -- ExecuteLink("https://pastebin.com/paste/tijwjtguijeuyhijuosryjir or whatever") name explains it
ProtectGui = protectgui, -- ProtectGui(ScreenGui) protects a gui against attacks from the stupid anticheats
FireEvent = fireconnections, -- FireEvent(TextButton.MouseButton1Click) fires a event, useful
TeleportToGame = teleportgame, -- TeleportToGame(your game id you wanna go to)
QueueScript = queuescript, -- QueueScript("print'Hello!'") if you use TeleportToGame then it will run the code
}
