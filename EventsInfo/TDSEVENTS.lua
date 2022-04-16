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
