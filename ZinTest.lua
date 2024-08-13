local Window = Fluent:CreateWindow({
    Title = "ZinSY Hub",
    SubTitle = "by truongvinh244",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = false,
    Theme = "SkyBlue",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Setting = Window:AddTab({ Title = "Setting", Icon = "settings" }),
    Stats = Window:AddTab({ Title = "Stats", Icon = "plus-circle" }),
    Player = Window:AddTab({ Title = "Player", Icon = "baby" }),
    Teleport = Window:AddTab({ Title = "Island", Icon = "palmtree" }),
    Fruit = Window:AddTab({ Title = "Fruit", Icon = "cherry" }),
    Raid = Window:AddTab({ Title = "Raid", Icon = "swords" }),
    Race = Window:AddTab({ Title = "Race V4", Icon = "chevrons-right" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
	Misc = Window:AddTab({ Title = "Misc", Icon = "list-plus" }),
    Hop = Window:AddTab({ Title = "Hop", Icon = "wifi" }),
    Info = Window:AddTab({ Title = "Info", Icon = "list" }),
}

---- Info
local Mastery = Tabs.Hop:AddSection("Nhìn Cặc fl tiktok vinhroblox244 plz")
end
Tabs.Info:AddButton({
        Title = "TruongVinh",
        Description = "user = truongvinh244",
        Callback = function()
end