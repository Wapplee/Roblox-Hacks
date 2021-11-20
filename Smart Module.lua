-- // Draggable
function drag(title,main)
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
-- //
-- // Teleport
function teleport(typ)
	local char = game:GetService("Players").LocalPlayer
	if not char then return end
	if typeof(typ) == "Vector3" then
		char.PrimaryPart.Position = typ
	elseif typeof(typ) == "CFrame" then
		char:SetPrimaryPartCFrame(typ)
	end
end


return {
Drag = drag,
Player = game:GetService("Players").LocalPlayer,
Copy = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set),
Teleport = teleport,
}
