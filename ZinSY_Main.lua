-- ZinSY_Roblox By TruongVinhSoCiu
local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId
-- ZinSY Hub - Legend of Speed
if game.PlaceId == 3101667897 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/truongvinh244/ZinSY_Roblox/refs/heads/main/legend_of_speed.lua"))()
else
    print("Game < ", game.Name, " > Không được hỗ trợ trong ZinSY Hub")
end

-- loadstring(game:HttpGet(""))()

-- loadstring(game:HttpGet("https://github.com/truongvinh244/TruongVinhSoCiu/blob/main/ZinSY_Main.lua"))()