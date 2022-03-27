--local Smart = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/Modules/Smart%20Module.lua"))()
local RepoLocation = "https://raw.githubusercontent.com/Wapplee/Roblox-Hacks/main/"
-- // Resources //--
local function getLink(link)
	return function() return loadstring(game:HttpGet(link))() end
end
local function getRepo(rep)
	return RepoLocation..rep	
end

-- // END OF RESOURCES // --


--// Console stuff
local function printconsole(txt,noline)
    local method = rconsoleprint
    if method then
        method(txt)
        if noline ~= true then
            method'\n'
        end
    else
        return error("This exploit does not support rconsoleprint!")
    end
end
local function warnconsole(txt,noline)
    local method = rconsolewarn
    if method then
        method(txt)
        if noline ~= true then
            printconsole("",true)
        end
    else
        return error("This exploit does not support rconsolewarn!")
    end
end
local function errorconsole(txt,noline)
    local method = rconsoleerr
    if method then
        method(txt)
        if noline ~= true then
            printconsole("",true)
        end
    else
        return error("This exploit does not support rconsoleerr!")
    end
end
local function infoconsole(txt,noline)
    local method = rconsoleinfo
    if method then
        method(txt)
        if noline ~= true then
            printconsole("",true)
        end
    else
        return error("This exploit does not support rconsoleerr!")
    end
end
local function clearconsole()
    local method = rconsoleclear
    if method then
        method()
    else
        return error("This exploit does not support rconsoleclear!")
    end
end
local function nameconsole(txt)
    local method = rconsolename
    if method then
        method(txt)
    else
        return error("This exploit does not support rconsolename!")
    end
end
local function inputconsole(txt)
    local method = rconsoleinput
    local inp =""
    if method then
        if tostring(txt) == txt and txt ~= "" then printconsole(txt,true) end
        inp = method()
    else
        return error("This exploit does not support rconsoleinput!")
    end
    return inp
end
local ConsoleStuff = {Error=errorconsole,Input = inputconsole,Warn = warnconsole,Print = printconsole,Clear = clearconsole,Info = infoconsole,Name = nameconsole}


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

--// Interactivity
local function clickbutton(btn,inps)
    local events = {"MouseButton1Up","MouseButton1Down","MouseButton1Click","Activated"}
    for _,event in pairs(inps or events) do
        for _,evnt in pairs(getconnections(btn[event])) do
            evnt:Fire()
        end
    end
end

-- // File Making
local function getFUNCTION(t)
    local func = loadstring("return "..t)()
    return func or error("Exploit does not support: "..t)
end
local function writeFILE(loc,sc)
    local method = getFUNCTION("writefile")
    if not method then return error'Exploit does not support writefile!'end
    if #loc:split'.' == 1 then
        makefolder(loc)
        return
    end
    local splits = #loc:split("/") == 0 and {""} or loc:split("/")
    local currentPath = ""
    for i,v in pairs(splits) do
        if i == #splits then currentPath = currentPath:sub(1,#currentPath-1)break end
        currentPath = currentPath..v.."/"
    end
    makefolder(currentPath)
    return method(loc,sc or "")
end

local function appendFILE(loc,sc)
   local method = getFUNCTION("appendfile")
   local a,b = pcall(function()
       method(loc,sc or "")
   end)
   if a == false then
	return writeFILE(loc,sc)	
   end
   return true
end
local function deleteFILE(loc)
    getFUNCTION("delfolder")
    getFUNCTION("delfile")
    delfolder(loc)
    if isfolder(loc) then delfile(loc)end
end
local function isFILE(loc)
    getFUNCTION("isfile")
    getFUNCTION("isfolder")
    local r = isfile(loc)
    if r == false then
        r = isfolder(loc)
    end
    return r
end
local function readFILE(loc)
    return getFUNCTION("readfile")(loc) 
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

--// Fire Touch Interest
function touchinterest(Part,PartWithTouchIntrest,AmtOfTime)
	local method = firetouchinterest
	if not method then return error'Executor does not support firetouchintrest!'end
	AmtOfTime = AmtOfTime or 0
	method(Part,PartWithTouchIntrest,0)
	if AmtOfTime ~= 0 then
		task.wait(AmtOfTime)
	end
	method(Part,PartWithTouchIntrest,1)
	return true
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

--// Fake Event
local function createfakeevent()
    local event = {Function = function()end}
    function event:Connect(f)
        self.Function = f
        local function disconnect()
            self.Function = function()end
        end
        local r = {}
        function r:Disconnect()
            disconnect()
        end
        return r
    end
    function event:Fire(...)
        self.Function(...)
    end
    return event
end
	
--// Announce Message
local function announceMessage(t)
    t = t or {}
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = t.Text or t.Message or t.txt or "no text specified :/";
        Font = t.Font or t.font or "Cartoon";
        Color = t.Color or t.Color3 or Color3.new(1,1,1);
        TextSize = t.Size or t.TextSize or t.FontSize;
    })
end

--// Player Chat
local function chatPlayer(t)
	l = l or {}
	local A_1 = t.Message or t.Text or t.txt or "hi guys"
	local A_2 = t.MessageTo or t.Person or t.Visibility or t.Visible or "All"
	game:GetService("ReplicatedStorage"):WaitForChild'DefaultChatSystemChatEvents':WaitForChild'SayMessageRequest':FireServer(A_1, A_2)
end

local SmartTable = {
Drag = drag, -- Drag(Title,MainFrame) Draggable guis!
Player = game:GetService("Players").LocalPlayer, -- The player.
Copy = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set) or warn('// Your executor does not support the feature: Copying. //'),
Teleport = teleport,-- Teleport(Vecctor3.new(0,0,0))
Notification = getLink(getRepo'Wapplee/Notifications%20Script.lua'), -- Notifications.
Noclip = getLink(getRepo'Wapplee/Noclip.lua'), -- Noclip(true) Noclip(false) Noclip() true = enable, false = disable, and nothing toggles.
ExecuteLink = getLink, -- ExecuteLink("https://pastebin.com/paste/tijwjtguijeuyhijuosryjir or whatever") name explains it
ProtectGui = protectgui, -- ProtectGui(ScreenGui) protects a gui against attacks from the stupid anticheats
FireEvent = fireconnections, -- FireEvent(TextButton.MouseButton1Click) fires a event, useful
TeleportToGame = teleportgame, -- TeleportToGame(your game id you wanna go to)
QueueScript = queuescript, -- QueueScript("print'Hello!'") if you use TeleportToGame then it will run the code
Console = ConsoleStuff, -- print(Console.Input("Type something, it will print it: "))
CreateEvent = createfakeevent, -- local event = CreateEvent, event:Fire(args) and event:Connect(function(args)
LazyUI = getLink(getRepo("Modules/LazyUI.lua")), -- LazyUI()
Touch = touchinterest, -- FireTouch(Character.Head,workspace.KillPart,0) Fires a touch event.
WriteFile = writeFILE, -- WriteFile("folder1/folder2/hello.txt","why you reading me") Makes a folder
AppendFile = appendFILE, -- AppendFile("folder1/folder2/hello.txt","this has been edited or added to the folders") Adds to a file, or makes the path and file.
ReadFile = readFILE, -- normal readfile
IsFile = isFILE, -- normal isfile/isfolder
DeleteFile = deleteFILE, -- normal delfile/deletefolder
AnnounceMessage = announceMessage, -- AnnounceMessage({Text = "haha, this is a chat message out of nowhere!"})
ChatPlayer = chatPlayer, -- ChatPlayer({Text = "hows everybody doing?"})
ClickButton = clickbutton, -- ClickButton(obj TextButton, ImageButton)
}
_G.SmartModule = SmartTable
return SmartTable
