local LP = game:GetService("Players").LocalPlayer
local LPcurrenthumanoid
if _G.noclip == nil then
	_G.noclip = false
	game:GetService('RunService').Stepped:connect(function()
		if LP.Character.Humanoid ~= nil then
			LPcurrenthumanoid = LP.Character.Humanoid
		end
		if _G.noclip  == true then
			if LP.Character then
				if LP.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
					LP.Character.Head.CanCollide = false
					LP.Character.Torso.CanCollide = false
					LP.Character["Left Leg"].CanCollide = false
					LP.Character["Right Leg"].CanCollide = false
					LP.Character["Left Arm"].CanCollide = false
					LP.Character["Right Arm"].CanCollide = false
				elseif LP.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					LP.Character.Head.CanCollide = false
					LP.Character.UpperTorso.CanCollide = false
					LP.Character.LowerTorso.CanCollide = false
					LP.Character.HumanoidRootPart.CanCollide = false
				end
			end
		end
	end)
end
return function(v)
	if v ~= nil then
		_G.noclip = v
	else
		_G.noclip = not _G.noclip
	end
end
