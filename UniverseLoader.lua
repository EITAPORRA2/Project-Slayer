local WebhookURL = "https://discord.com/api/webhooks/1138913606428270755/Afbw7-sJuaftxZ4XFo8oGoHNosSWf6BF0puvrjAlWtlJZZSjxb-AgepTb-N95XwzVkYB"

local function sendWebhook(keyUsed)
    local payload = {
        ["username"] = "Perm Buyers Bot",
        ["content"] = string.format("Key Used: %s", keyUsed),
        ["embeds"] = {{
            ["title"] = "**PC script has been executed!**",
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
    key3 = "8E40BF62-4476-42BF-8CF2-64558FADCE7B", --Gabimaru
    key4 = "150DD599-3190-4244-846B-14E87C20F84D", --Gabs
    key5 = "75D1BBFB-02B9-4A2C-8F7E-6BC9BBDBD9DD", --pvpxty1999p
    key6 = "d56c36dd-690d-4f5b-b625-848f0e2cb715", --akirafelino242
    key7 = "0EAB0FD4-4062-49EE-B28F-2070CE5DDC31", --Sid
    Key8 = "CE18C3FC-8BCC-4382-8A33-8D3459E862BD", --Breno
    key9 = "3CE07308-9EA4-4AE7-A832-7CDDA22FD49F", --Marcelo
    Key10 = "789F944A-7ADA-4C50-AD10-CE92456F8817", --otom_7g (PC)
    Key11 = "45FEB629-EE78-40E0-8E54-4B93150F4E0B", --PanteraApro
    Key12 = "53E44E4B-2C0D-45D7-BE39-C1FAC3D17946", --GodMan
    Key13 = "E9650A12-2995-4A95-895E-07E3EE4760AC", --chico
    Key14 = "B13ACD61-13BA-4581-86D1-AAE25F676BCA", --Miguel
    Key15 = "335eac97-c37a-41aa-b75c-ea1e9314547d", --Melissa
    Key16 = "6E7C5A22-7255-4F81-8182-93F4D9EF3B57", --Lucas
    Key17 = "4507a338-2b57-4a19-94c0-f3a149e387e6", --Bruno
    Key18 = "DA12DA52-E4BD-4EAF-8329-5982E4DD5013", --Daniel Da Gazeficação
    key19 = "C008EF11-7296-489A-AE35-03280F145DDB", --TANJIRO KAMADO
    key20 = "F15A4802-087C-45FF-B3DE-20A2C3E7BEF1", --Senju
    key21 = "A23912CE-D7D1-42A0-B74F-4E94F1603500", --Sonin
    Key22 = "33529B34-E0CA-4D60-B423-05C3158996A7", --Oirlonsio Xernous
    Key22 = "ShadowCria", --ShadowCria
    Key23 = "7854509C-7B28-459C-A280-ED5A4E72360E" --Musashi
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
    game.Players.LocalPlayer:Kick("Quem é você?, verme")
    return
end

local wl_key = _G.wl_key -- Armazena a chave da Whitelist em uma variável
if checkAccess(wl_key) then
    sendWebhook(wl_key) -- Passa a chave para a função sendWebhook
    local players = game:GetService("Players")

    local placeID1 = 5956785391
    local placeID2 = 6152116144
    local placeID3 = 13883059853
    local placeID4 = 11468075017
    local placeID5 = 11468034852
    local placeID6 = 13881804983
    local placeID7 = 13883279773
    local placeID8 = 2753915549
    local placeID9 = 4442272183
    local placeID10 = 7449423635
    local placeID11 = 6299805723
    local placeID12 = 301549746
    local placeID13 = 1480424328
    local placeID14 = 1869597719
    local placeID15 = 443406476

    if game.PlaceId == placeID1 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/MainMenu"))()
    elseif game.PlaceId == placeID2 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/UniverseMAP1%20PC.lua"))()
    elseif game.PlaceId == placeID3 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/Universe%20MAP2%20PC.lua"))()
    elseif game.PlaceId == placeID4 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/HubDg"))()
    elseif game.PlaceId == placeID5 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/Mugen"))()
    elseif game.PlaceId == placeID6 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/Universe%20MAP2%20PC.lua"))()
    elseif game.PlaceId == placeID7 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Project-Slayer/main/UniverseMAP1%20PC.lua"))()
    elseif game.PlaceId == placeID8 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/BloxFruits/main/Blox%20Fruits%20Universe"))()
    elseif game.PlaceId == placeID9 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/BloxFruits/main/Blox%20Fruits%20Universe"))()
    elseif game.PlaceId == placeID10 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/BloxFruits/main/Blox%20Fruits%20Universe"))()
    elseif game.PlaceId == placeID11 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Anime-Fighters/main/Anime%20Fighters%20Main"))()
    elseif game.PlaceId == placeID12 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Counter-Blox/main/CounterBlox%20Universe"))()
    elseif game.PlaceId == placeID13 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Counter-Blox/main/CounterBlox%20Universe"))()
    elseif game.PlaceId == placeID14 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/Counter-Blox/main/CounterBlox%20Universe"))()
    elseif game.PlaceId == placeID15 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EITAPORRA2/ProjectLazarus/main/Project%20Lazarus%20Main"))()
                else
                error("Place ID inválido.")
                end
                end