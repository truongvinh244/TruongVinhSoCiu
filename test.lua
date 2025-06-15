local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
-- create tab window
local Window = Fluent:CreateWindow({
    Title = "ZinSY Hub - Speed",
    SubTitle = "by truongvinh244",
    TabWidth = 160,
    Size = UDim2.fromOffset(400, 310),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
local Options = Fluent.Options
Fluent:Notify({
    Title = "ZinSY Hub - Notification",
    Content = "Loading Done !",
    SubContent = "Script Của Bạn Đã Chạy Thành Công",
    Duration = 8
})
-- close ui

-- local 
local hoopsFolder = workspace:WaitForChild("Hoops")
local cityFolder = workspace:WaitForChild("orbFolder"):WaitForChild("City")
local player = game.Players.LocalPlayer
local hrp = player.Character:WaitForChild("HumanoidRootPart")
-- func local
player.CharacterAdded:Connect(function(char)
    hrp = char:WaitForChild("HumanoidRootPart")
end)
-- main func

-- Create Script
-- HoopsTab
local HoopsTab = Tabs.Main:AddSection("Hoops Tab - Tab Vòng Nhảy")
local AutoTPHoops = HoopsTab:AddToggle("AutoTPHoops", {
    Title = "Auto TP Hoops",
    Description = "TP Tới Vòng Nhảy", 
    Default = false })
AutoTPHoops:OnChanged(function(Value)
    _G.AutoTPHoopsGf = Value
end)
Options.AutoTPHoops:SetValue(false)
task.spawn(function()
    while wait(0.2) do
        if _G.AutoTPHoopsGf then
            for hoopsx, hoops1 in ipairs(hoopsFolder:GetChildren()) do
                pcall(function()
                    hrp.CFrame = CFrame.new(hoops1.Position)
                end)
                wait(0.1)
            end
        end
    end
end)
-- OrbsTabs
local OrbsTab = Tabs.Main:AddSection("Orbs Tab - Tabs Quả Cầu Phát Sáng")
local AutoTPOrbs = OrbsTab:AddToggle("AutoTPOrbs", {
    Title = "Auto TP Orbs",
    Description = "TP Tới Quả Cầu Phát Sáng",
    Default = false })
AutoTPOrbs:OnChanged(function(Value)
    _G.AutoTPOrbsGf = Value
end)
Options.AutoTPOrbs:SetValue(false)
task.spawn(function()
    while wait(0.2) do
        if _G.AutoTPOrbsGf then
            for orbx, orb1 in ipairs(cityFolder:GetChildren()) do
                pcall(function()
                    hrp.CFrame = CFrame.new(orb1:GetChildren()[2].Position)
                end)
                wait(0.1)
            end
        end
    end
end)
-- SpawmTab
local SpawmTab = Tabs.Main:AddSection("Spawm Tab - Tab Hồi Sinh")
local AutoTPSpawm = SpawmTab:AddToggle("AutoTPSpawm", {
    Title = "Auto TP Spawm",
    Description = "TP Tới Spawm Khi Tắt Orb Và Hoops",
    Default = false })
AutoTPSpawm:OnChanged(function(Value)
    _G.AutoTPSpawmGf = Value
end)
Options.AutoTPSpawm:SetValue(false)
task.spawm(function()
    while wait(0.2) do
        if _G.AutoTPSpawmGf then
            hrp.CFrame = CFrame.new(500, 7, 412)
        end
    end
end)