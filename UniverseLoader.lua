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
    key1 = "XMHRD3KX1CGZCD2DT3Y3", --Faoolz
    key2 = "ATCCY1ATTBGKXZODAN7M", --Leo
    key3 = "2486NNM7NGKNTMZ7F622", --Gabimaru
    key4 = "Z1036N5HTCEFNWTE5A1W", --Gabs
    key5 = "H279QS2W31J3BEKHQ8DW", --pvpxty1999p
    key6 = "GJB913D4QJKIL5XANNOO", --akirafelino242
    key7 = "5EUG6LGQPTDI59MUZLCZ", --Sid
    Key8 = "GI27PDW3QWPY22TX4RX0", --Breno
    key9 = "U96FBG32NX6P29MREP4X", --Marcelo
    Key10 = "47YEJSS2ROW61JWAF5U2", --otom_7g (PC)
    Key11 = "D9DXISDUS3KIUL4X0W6X", --PanteraApro
    Key12 = "KOP06BR33HWQ047QBSX6", --GodMan
    Key13 = "T3JWOLRXJDMND3NXX7A4", --chico
    Key14 = "9H44S77IEXPYP1DH90M3", --Miguel
    Key15 = "7HPDI6QBUG9JJEWK4O53", --Melissa
    Key16 = "9U3Z7IMXUDCMQZRWD51H", --Lucas
    Key17 = "Q51ANX7WJE4UOSNNTJ5Q", --Bruno
    Key18 = "0I7GH64DZGOE4331Q2QB", --Daniel Da Gazeficação
    key19 = "6HFN18FCLXNEUG3777C6", --TANJIRO KAMADO
    key20 = "Y3O16UZ6BEA6B6MFQMQS", --Senju
    key21 = "4DE61MN4KWLNB1LDO2ZC", --Sonin
    Key22 = "ESRRB72FAYW0RN7OYWAL", --Oirlonsio Xernous
    Key22 = "65HZXPO8YSYO4B2AGR8K", --ShadowCria
    Key23 = "T6ES58SOGWCIX27LIY8S" --Musashi
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
    end
