-- Main Ui
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
-- Create Ui
local Window = Rayfield:CreateWindow({
    Name = "ZinSY Hub - Grow A Garden",
    Icon = 0,
    LoadingTitle = "ZinSY Script",
    LoadingSubtitle = "by TruongVinh.Dev",
    Theme = "Amethyst",
    ToggleUIKeybind = "K",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "ZinSY_Script"
    },
})
-- Tab
local Main = Window:CreateTab("Main", 4483362458)
-- Local 
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local hoopsFolder = workspace:WaitForChild("Hoops")
local cityFolder = workspace:WaitForChild("orbFolder"):WaitForChild("City")
-- Func Local Auto
player.CharacterAdded:Connect(function(char)
    hrp = char:WaitForChild("HumanoidRootPart")
end)
-- Func Main

-- Create Script
local AutoTPHoopsGf = nil
local AutoTPHoops = Main:CreateToggle({
    Name = "Auto TP Hoops",
    CurrentValue = false,
    Flag = "AutoTPHoopsFlag",
    Callback = function(Value)
        AutoTPHoopsGf = Value
    end,
})
local AutoTPOrbsGf = nil
local AutoTPOrbs = Main:CreateToggle({
    Name = "Auto TP Orbs",
    CurrentValue = false,
    Flag = "AutoTPOrbsFlag",
    Callback = function(Value)
        AutoTPOrbsGf = Value
    end,
})
local AutoTPHomeGf = nil
local AutoTPHome = Main:CreateToggle({
    Name = "Auto TP Home",
    CurrentValue = false,
    Flag = "AutoTPHomeFlag",
    Callback = function(Value)
        AutoTPHomeGf = Value
    end,
})
task.spawn(function()
    while wait(0.2) do
        if AutoTPHoopsGf then
            for hoopsx, hoops1 in ipairs(hoopsFolder:GetChildren()) do
                pcall(function()
                    hrp.CFrame = CFrame.new(hoops1.Position)
                end)
                wait(0.1)
            end
        end
    end
end)
task.spawn(function()
    while wait(0.2) do
        if AutoTPOrbsGf then
            for orbx, orb1 in ipairs(cityFolder:GetChildren()) do
                pcall(function()
                    hrp.CFrame = CFrame.new(orb1:GetChildren()[2].Position)
                end)
                wait(0.1)
            end
        end
    end
end)