-- loadstring(game:HttpGet'')()
local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid


local Roka = LocalPlayer.Backpack:FindFirstChild("Rokakaka")
local Arrow = LocalPlayer.Backpack:FindFirstChild("Stand Arrow")
if Roka or Arrow then
    local function checkStand()
        local st = Character:FindFirstChild("Stand")
        if st then
            return #st:GetChildren() >= 1
        end
        return false
    end
    if Roka and checkStand() then
        Humanoid:EquipTool(Roka)
        Roka.Use:FireServer()
        repeat wait() until not checkStand()
    end
    if Arrow and not checkStand() then
        Humanoid:EquipTool(Arrow)
        Arrow.Use:FireServer()
    end
end
