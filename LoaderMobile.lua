local WebhookURL = "https://discord.com/api/webhooks/1138913606428270755/Afbw7-sJuaftxZ4XFo8oGoHNosSWf6BF0puvrjAlWtlJZZSjxb-AgepTb-N95XwzVkYB"

local function sendWebhook(keyUsed)
    local payload = {
        ["username"] = "Mobile Buyers Bot",
        ["content"] = string.format("Key Used: %s", keyUsed),
        ["embeds"] = {{
            ["title"] = "**Mobile script has been executed!**",
            ["description"] = game.Players.LocalPlayer.DisplayName .. " has executed the script.",
            ["type"] = "rich",
            ["color"] = tonumber("0xffffff"),
            ["fields"] = {
                {
                    ["name"] = "Hardware ID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                }
            }
        }}
    }

    local headers = {
        ["Content-Type"] = "application/json"
    }

    local requestBody = game:GetService("HttpService"):JSONEncode(payload)

    local response = http_request({
        Url = WebhookURL,
        Method = "POST",
        Headers = headers,
        Body = requestBody
    })
end

WhitelistKeys = {
    key = "BA3533C9-B8B3-4B7B-96D7-886DD60AD221", --Faoolz
    key2 = "8783A701-FB8A-48EA-9ED5-2686CB25738D", --Leo
    Key3 = "4507a338-2b57-4a19-94c0-f3a149e387e6", --Bruno
    Key4 = "ebdb3e8c-2d03-48c2-8714-9ad1feb9199e", --Henrique
    Key5 = "7a3a238a-a4d9-44cf-b6c5-a6f9e74908f8", --Melissa
    key6 = "879c6da4-3831-4d40-bc75-838690922262", --gustavo
    key7 = "8783A701-FB8A-48EA-9ED5-2686CB25738D" --Menocadu

}


function checkAccess(key)
    for _, value in pairs(WhitelistKeys) do
        if value == key then
            return true
        end
    end
    return false
end

local wl_key = _G.wl_key -- Armazena a chave da Whitelist em uma variável
if not checkAccess(wl_key) then
    game.Players.LocalPlayer:Kick("Quem é você?, Mobile Fudido")
    return
end

local wl_key = _G.wl_key -- Armazena a chave da Whitelist em uma variável
if checkAccess(wl_key) then
    sendWebhook(wl_key) -- Passa a chave para a função sendWebhook
    local players = game:GetService("Players")

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Welcome!",
        Text = "Granted Access To, " .. players.LocalPlayer.DisplayName,
        Icon = "rbxthumb://type=AvatarHeadShot&id=" .. players.LocalPlayer.UserId .. "&w=180&h=180",
        Duration = 5
    })
local placeID1 = 5956785391
local placeID2 = 6152116144
local placeID3 = 13883059853
local placeID4 = 11468075017
local placeID5 = 11468034852
local placeID6 = 13881804983
local placeID7 = 13883279773
local placeID8 = 6299805723
local placeID9 = 2753915549
local placeID10 = 4442272183
local placeID11 = 7449423635
local placeID12 = 443406476


                if game.PlaceId == placeID1 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/MainMenu"))()
                elseif game.PlaceId == placeID2 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/HubMap1.lua"))()
                elseif game.PlaceId == placeID3 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/HubMap2.lua"))()
                elseif game.PlaceId == placeID4 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/HubDg"))()
                elseif game.PlaceId == placeID5 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/Mugen"))()
                elseif game.PlaceId == placeID6 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/HubMap2.lua"))()
                elseif game.PlaceId == placeID7 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/HubMap1.lua"))()
                elseif game.PlaceId == placeID8 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Anime-Fighters/main/Anime%20Fighters%20Main"))()
                elseif game.PlaceId == placeID9 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/BloxFruits/main/Blox%20Fruits%20Universe"))()
                elseif game.PlaceId == placeID10 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/BloxFruits/main/Blox%20Fruits%20Universe"))()
                 elseif game.PlaceId == placeID11 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/BloxFruits/main/Blox%20Fruits%20Universe"))()
                 elseif game.PlaceId == placeID12 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/ProjectLazarus/main/Project%20Lazarus%20Main"))()
                else
                error("Place ID inválido.")
                end
                end
