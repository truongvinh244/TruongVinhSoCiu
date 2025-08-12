local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId

function closeui()
    local player = game.Players.LocalPlayer
    local ScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")
    ScreenGui.Parent = player:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ImageButton.Parent = ScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(88, 193, 246)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.0304, 0, 0.128, 0)
    ImageButton.Size = UDim2.new(0, 40, 0, 40)
    ImageButton.Image = "rbxassetid://180DAY-ae9449f0beb60bc21ec99719d222ddb0"
    ImageButton.Draggable = true
    ImageButton.Active = true
    ImageButton.Selectable = true
    UICorner.Parent = ImageButton
    ImageButton.MouseButton1Down:Connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Delete, false, game)
    end)
end
if _G.Device == "PC" then
    _G.SizeDevice = UDim2.fromOffset(712, 512)
    closeui()
elseif _G.Device == "Tablet" then
    _G.SizeDevice = UDim2.fromOffset(589, 470)
    closeui()
else
    _G.SizeDevice = UDim2.fromOffset(510, 325)
    closeui()
end

if game.PlaceId == 2753915549 then
    print("ZinSY Hub - Loading Blox Fruit Sea 1")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/truongvinh244/ZinSY_Roblox/refs/heads/main/bfsea1.lua"))()
elseif game.placeId == 	4442272183 then
    print("ZinSY Hub - Loading Blox Fruit Sea 2")
elseif game.PlaceId == 7449423635 then
    print("ZinSY Hub - Loading Blox Fruit Sea 3")
end 

-- loadstring(game:HttpGet("https://raw.githubusercontent.com/truongvinh244/TruongVinhSoCiu/refs/heads/main/ZinSY_Main.lua"))()
