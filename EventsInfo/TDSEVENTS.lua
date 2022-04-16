local Event = game:GetService("ReplicatedStorage").RemoteFunction
-- events


game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Profiles","Download",LocalPlayer) -- Gets data of someone or your client. Example below.
Troops = (table)
    1 = Sniper
    2 = Commander
    3 = Farm
Values = (table)
    Triumphs = 22
    Experience = 4
    Loses = 21
    Level = 32
    Gems = 0
    Coins = 3826
Icon = (player icon id)

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Elevators", "Leave") -- Leave Elevator

Event:InvokeServer("Elevators", "Enter", (elevator object here)) -- Elevator is in workspace.Elevators

-- IN GAME
Event:InvokeServer("Difficulty", "Vote", "Normal") -- Easy = (Normal), Normal = (Molten), Insane = (Fallen)

local CORDS = 
{
	["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), 
	["Position"] = Vector3.new(7.822144985198975, -0.04147529602050781, -9.369961738586426)
}
Event:InvokeServer("Troops", "Place", "Farm", CORDS) -- Place Towers. This is in crossroads and it will place a farm near the connector.
