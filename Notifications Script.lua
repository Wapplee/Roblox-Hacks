function Notification(tab,buttons)
	
	local icon = ""
	local duration = tab.Duration or 5
	local Description = tab.Description or ""
	local title = tab.Title or ""
	
	if tab.Icon ~= nil then
		icon = "rbxassetid://"..tostring(tab.Icon)
	end

	local tabl = {Duration = duration,Text = Description,Title = title,Icon = icon}
	for i,v in pairs(buttons) do
		tabl["Button"..i] = v[1]
	end
	local function callback(Text)
		for i,v in pairs(buttons) do
			if Text == v[1] then
				if v[2] ~= nil then
					v[2]()
				end
			end
		end
		NotificationBindable:Remove()
	end

	local NotificationBindable = Instance.new("BindableFunction")
	NotificationBindable.OnInvoke = callback
	tabl.Callback = NotificationBindable
	game.StarterGui:SetCore("SendNotification",  tabl)
    --[[game.StarterGui:SetCore("SendNotification",  {
        Title = "Title";
        Text = "Description";
        Icon = "";
        Duration = 5;
        Button1 = "Button1 text";
        Button2 = "Button2 text";
        Callback = NotificationBindable;
    })--]]
end
--[[
Notification({Title = "Are you afk?",Description = "Please, this helps us!",Duration = 1},
	{
		{"Yes",function()game.Players.LocalPlayer:Kick("Afk!") end},
		{"No"},
	})
--]]
return Notification
