--loadstring(game:HttpGet('https://github.com/Wapplee/Roblox-Hacks/blob/main/Wapplee/Stand%20Upright%20Hacks/Trader.lua'))()("Rokakaka",3)


-- Rokakaka
-- Ketchup
-- Stand Arrow
-- Green Baby
-- Charged Arrow
return function(ToolName,Count)
local Tools = {}

local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid

for _,v in pairs(LocalPlayer.Backpack:GetChildren()) do
    if v.Name == ToolName and not table.find(Tools,v) then
       table.insert(Tools,v)
       if #Tools == Count then break end
    end
end

local cb = LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
for _,v in pairs(Tools) do
    Humanoid:EquipTool(v)
    wait(.1)
    cb.Text = "/dropitem"
    cb:CaptureFocus()
    cb:ReleaseFocus(true)
end
end
