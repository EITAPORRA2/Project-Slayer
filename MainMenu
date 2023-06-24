local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Universe Hub",
    LoadingTitle = "Loading Universe",
    LoadingSubtitle = "Feito com bumbum",
    })

    local Auto = Window:CreateTab("Auto")
    local skins = Window:CreateTab("Pressets")

    local Button = Auto:CreateButton({
        Name = "AutoCode",
        Callback = function()
            local values = {
                "Update309ArtSpins",
                "ThxFor650KVotes",
                "",
                "",
            }
    
            local Event = game:GetService("ReplicatedStorage").Remotes["send_code_to_server"]
    
            for i = 1, #values do
                local value = values[i]
                Event:FireServer(value)
                wait(10.1)
            end
        end,
    })
    
     Auto:CreateButton({
        Name = "Skip Spin GamePass",
        Callback = function ()
            local player = game.Players.LocalPlayer
        local gamepass5 = Instance.new("StringValue")
        gamepass5.Name = "46503236"
        gamepass5.Parent = player.gamepasses
        end
    })
    

local Toggle = Auto:CreateToggle({
   Name = "Auto Daily Spin",
   CurrentValue = false,
   Callback = function(bool)

        spinning = bool -- Atualiza a variável 'spinning' com o valor do toggle

        if spinning then
            while spinning do -- Inicia o loop enquanto 'spinning' for verdadeiro
                wait()
                game:GetService("ReplicatedStorage"):WaitForChild("spins_thing_remote"):InvokeServer()
            end
        end
    end
})

skins:CreateButton({
    Name = "Dan",
    Callback = function ()
        local player = game.Players.LocalPlayer
local customizationData = game:GetService("ReplicatedStorage").Player_Data[player.Name].Customization

local function changeValue(instance, value)
    local args = {
        [1] = "Change_Value",
        [2] = instance,
        [3] = value
    }
    
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
end

changeValue(customizationData.Body_Scaling.Width, 0)
wait(0.1)
changeValue(customizationData.Body_Scaling.Height, 0)
wait(0.1)
changeValue(customizationData.Body_Scaling.Depth, 0)

-- Shirt
changeValue(customizationData.Clothes.Shirt.Index, 7)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color.R, 0)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color.G, 0)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color.B, 0)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color2.R, 0)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color2.G, 0)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color2.B, 0)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color3.R, 0)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color3.G, 0)
wait(0.1)
changeValue(customizationData.Clothes.Shirt.Color3.B, 0)

-- Shoes
changeValue(customizationData.Shoes.Index, 7)
wait(0.1)
changeValue(customizationData.Shoes.Color1.R, 0)
wait(0.1)
changeValue(customizationData.Shoes.Color1.G, 0)
wait(0.1)
changeValue(customizationData.Shoes.Color1.B, 0)
wait(0.1)
changeValue(customizationData.Shoes.Color2.R, 0)
wait(0.1)
changeValue(customizationData.Shoes.Color2.G, 0)
wait(0.1)
changeValue(customizationData.Shoes.Color2.B, 0)
wait(0.1)
changeValue(customizationData.Shoes.Color3.R, 0)
wait(0.1)
changeValue(customizationData.Shoes.Color3.G, 0)
wait(0.1)
changeValue(customizationData.Shoes.Color3.B, 0)

-- Pants
changeValue(customizationData.Clothes.Pants.Index, 4)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color.R, 0)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color.G, 0)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color.B, 0)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color2.R, 0)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color2.G, 0)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color2.B, 0)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color3.R, 0)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color3.G, 0)
wait(0.1)
changeValue(customizationData.Clothes.Pants.Color3.B, 0)

-- Eye
wait(0.1)
changeValue(customizationData.Face.Eyes, 53)

-- Nose
wait(0.1)
changeValue(customizationData.Face.Nose, 2)

-- Mouth
wait(0.1)
changeValue(customizationData.Face.Mouth, 9)

-- Extra
wait(0.1)
changeValue(customizationData.Face.Extra, 2)

-- Extra2
wait(0.1)
changeValue(customizationData.Face.Extra2, 2)

wait(0.1)
changeValue(customizationData.Hairs.Hair1.Index, 14)
wait(0.1)
changeValue(customizationData.Hairs.Hair2.Index, 23)

-- Hair Color
wait(0.1)
changeValue(customizationData.Hairs.Hair1.Color.R, 0.9803921580314636)
wait(0.1)
changeValue(customizationData.Hairs.Hair1.Color.G, 0.6470588445663452)
wait(0.1)
changeValue(customizationData.Hairs.Hair1.Color.B, 0.7450980544090271)
wait(0.1)
changeValue(customizationData.Hairs.Hair2.Color.R, 0.9803921580314636)
wait(0.1)
changeValue(customizationData.Hairs.Hair2.Color.G, 0.6470588445663452)
wait(0.1)
changeValue(customizationData.Hairs.Hair2.Color.B, 0.7450980544090271)

-- Beard
local beardIndex = game:GetService("ReplicatedStorage").Player_Data[player.Name].Customization.Hairs.Beard.Index
changeValue(beardIndex, 0)

-- Skin Color
changeValue(customizationData.Skin_Color.R, 0.800000011920929)
wait(0.1)
changeValue(customizationData.Skin_Color.G, 0.5568627715110779)
wait(0.1)
changeValue(customizationData.Skin_Color.B, 0.4117647111415863)
    end
})
skins:CreateButton({
    Name = "Leo",
    Callback = function ()
        local playerName = game.Players.LocalPlayer.Name

local function changeValue(instance, value)
    local args = {"Change_Value", instance, value}
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
end

-- Escala
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Body_Scaling.Width, 0)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Body_Scaling.Height, 0)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Body_Scaling.Depth, 0)

-- Sapatos
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Shoes.Index, 2)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Shoes.Color1.R, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Shoes.Color1.G, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Shoes.Color1.B, 1)

-- Camisa
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Shirt.Index, 29)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Shirt.Color.R, 0)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Shirt.Color.G, 0)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Shirt.Color.B, 0)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Shirt.Color2.R, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Shirt.Color2.G, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Shirt.Color2.B, 1)

-- Calças
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Pants.Index, 21)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Pants.Color.R, 0)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Pants.Color.G, 0)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Pants.Color.B, 0)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Pants.Color2.R, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Pants.Color2.G, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Clothes.Pants.Color2.B, 1)

-- Chifre
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Horns, 4)

-- Olho
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Face.Eyes, 4)

-- Nariz
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Face.Nose, 2)

-- Boca
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Face.Mouth, 5)

-- Extra
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Face.Extra, 7)

-- Extra2
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Face.Extra2, 7)

-- Hair
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Hair1.Index, 4)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Hair2.Index, 4)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Hair1.Color.R, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Hair1.Color.G, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Hair1.Color.B, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Hair2.Color.R, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Hair2.Color.G, 1)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Hair2.Color.B, 1)


-- Beard
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Hairs.Beard.Index, 0)
wait(0.1)

-- Skin Color
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Skin_Color.R, 0.6235294342041016)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Skin_Color.G, 0.6784313917160034)
wait(0.1)
changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Skin_Color.B, 0.7529411911964417)
    end
})
skins:CreateButton({
    Name = "????",
    Callback = function ()
        local player = game.Players.LocalPlayer
local customizationData = game:GetService("ReplicatedStorage").Player_Data[player.Name].Customization

local function changeValue(instance, value)
    local args = {
        [1] = "Change_Value",
        [2] = instance,
        [3] = value
    }
    
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
end

changeValue(customizationData.Skin_Color.R, 1)
wait(0.1)
changeValue(customizationData.Skin_Color.G, 0)
wait(0.1)
changeValue(customizationData.Skin_Color.B, 1)
wait(0.1)
changeValue(customizationData.Hairs.Beard.Index, 3)
wait(0.1)
changeValue(customizationData.Hairs.Hair1.Index, 10)
wait(0.1)
changeValue(customizationData.Face.Extra2, 16)
wait(0.1)
changeValue(customizationData.Face.Extra, 16)
wait(0.1)
changeValue(customizationData.Face.Mouth, 43)
wait(0.1)
changeValue(customizationData.Face.Nose, 21)
wait(0.1)
changeValue(customizationData.Face.Eyes, 42)
wait(0.1)
changeValue(customizationData.Hairs.Beard.Color.R, 1)
wait(0.1)
changeValue(customizationData.Hairs.Beard.Color.G, 1)
wait(0.1)
changeValue(customizationData.Hairs.Beard.Color.B, 1)
wait(0.1)
changeValue(customizationData.Hairs.Hair1.Color.R, 1)
wait(0.1)
changeValue(customizationData.Hairs.Hair1.Color.G, 1)
wait(0.1)
changeValue(customizationData.Hairs.Hair1.Color.B, 1)
wait(0.1)
changeValue(customizationData.Body_Scaling.Width, 10)
wait(0.1)
changeValue(customizationData.Body_Scaling.Height, 0)
wait(0.1)
changeValue(customizationData.Body_Scaling.Depth, 10)
wait(0.1)
changeValue(customizationData.Hairs.Hair2.Index, 10)
wait(0.1)
changeValue(customizationData.Hairs.Hair2.Color.G, 1)
wait(0.1)
changeValue(customizationData.Hairs.Hair2.Color.B, 1)
wait(0.1)
changeValue(customizationData.Hairs.Hair2.Color.R, 1)
    end
})
skins:CreateButton({
    Name = "No More",
    Callback = function ()
        local args = {[1] = "Change_Value",[2] = game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.name].Customization.Clothes.Shirt.Index,[3] = -17}game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
local args = {[1] = "Change_Value",[2] = game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.name].Customization.Shoes.Index,[3] = -1} game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
local args = {[1] = "Change_Value",[2] = game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.name].Customization.Clothes.Pants.Index,[3] = 25}game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
    end
})


local playerName = game.Players.LocalPlayer.Name

local function changeValue(instance, value)
    local args = {"Change_Value", instance, value}
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
end

local ColorPicker = Auto:CreateColorPicker({
    Name = "Skin Color",
    Color = Color3.fromRGB(1, 1, 1),
    Callback = function(Value)
        local r = Value.R / 1
        local g = Value.G / 1
        local b = Value.B / 1

        changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Skin_Color.R, r)
        changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Skin_Color.G, g)
        changeValue(game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Customization.Skin_Color.B, b)
    end
})
