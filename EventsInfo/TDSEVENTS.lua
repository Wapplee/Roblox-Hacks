local Event = game:GetService("ReplicatedStorage").RemoteFunction
local Event2 = game:GetService('ReplicatedStorage').RemoteEvent
-- events

-- Troops
Event:InvokeServer("Inventory", "Execute", "Troops", "Remove", {Name = "troop name"}) -- Remove a troop from your loadout

Event2:FireServer("Inventory", "Execute", "Troops", "Add", {Name = "troop name"}) -- Add a troop to your loadout


local function SetLoadout(load)
    local Event = game:GetService("ReplicatedStorage").RemoteFunction
    local Event2 = game:GetService('ReplicatedStorage').RemoteEvent
    local troops = game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Profiles","Download",game:GetService'Players'.LocalPlayer).Troops
    for _,v in pairs(troops) do
	Event:InvokeServer("Inventory", "Execute", "Troops", "Remove", {Name = v})	
    end
    for _,v in pairs(load) do
	Event2:FireServer("Inventory", "Execute", "Troops", "Add", {Name = v})
    end
end


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

Event:InvokeServer("Troops","Sell",{Troop=(troop)}) -- Sell Troops (troop = workspace.Troops["your troop and stuff"])

Event:InvokeServer("Troops","Upgrade","Set",{Troop = workspace.Towers.Default}) -- workspace.Towers.Default is the tower you want. this upgrades it.

Event2:FireServer("Waves","Skip") -- Skip Wave
