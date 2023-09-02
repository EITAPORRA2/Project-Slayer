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
                end
