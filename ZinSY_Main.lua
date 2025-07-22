local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId

-- Legend of Speed
if game.PlaceId == 3101667897 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/truongvinh244/ZinSY_Roblox/refs/heads/main/legend_of_speed.lua"))()
-- Grow A Garden
elseif game.PlaceId == 126884695634066 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/truongvinh244/ZinSY_Roblox/refs/heads/main/grow_a_garden.lua"))()
end