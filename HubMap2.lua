function Intro()
    local assetIDs = {
        "7534312676",
        "8964489645",
        "5009915812",
        "7212066712",
        "9605261863",
        "8425069728",
        "11818627075",
        "12624371138",
        "12641976501",
        "12623079321",
        "10491133376",
        "13510696209",
        "6338864674",
        "11176073582",
        "10111107788",
        "8073107254",
        "12740941002",
        "9142678957",
        "2612555810",
        "5205790826",
        "2015725",
        "3405820",
        "5951175872",
        "12584003137",
        "9657394390",
        "8446199815",
        "10180628714",
        "5951177109",
        "11980289102"        
    }
    
    local randomIndex = math.random(1, #assetIDs)
    local selectedAssetID = assetIDs[randomIndex]
    
    local ohTable1 = {
    ["Profile_Image"] = "https://www.roblox.com/asset-thumbnail/image?assetId=" .. selectedAssetID .. "&width=420&height=420&format=png",
        ["Text"] = "<AnimateStepFrequency=3><AnimateStepTime=.0005><TextScale=.5><AnimateStyle=Fade>Universe Hub Loading<AnimateStyle=/><TextScale=/><AnimateStepTime=/><AnimateStepFrequency=/>",
        ["Additional_Text"] = "Welcome to the Universe Hub!",
        ["Duration"] = 4,
        ["custom_image_size"] = UDim2.new(1.1, 0, 1.1, 0)
    }
    
    game:GetService("Players").LocalPlayer.PlayerGui.text_notification:Fire(ohTable1)
end
Intro()

function antiafk()
    local bb = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end)
    end
antiafk()

repeat wait() until game:IsLoaded()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Universe Hub",
    LoadingTitle = "Loading Universe",
    LoadingSubtitle = "Feito com bumbum",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Universe Hub", -- Create a custom folder for your hub/game
        FileName = "Project Slayer Map2",
        Rayfield:LoadConfiguration()
    }})

    local AutoBoss = Window:CreateTab("Auto Farm Boss")
    local killauraTab = Window:CreateTab("KillAura")
    local Bypasses = Window:CreateTab("Bypass")
    local webhook = Window:CreateTab("WebHooks")
    local Misc = Window:CreateTab("Misc")
    local TeleportTween2 = Window:CreateTab("Tween TP")
    local Teleports2 = Window:CreateTab("Insta TP")
    
local player = game:GetService("Players").LocalPlayer;
local UIS = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")
local VIM =game:GetService("VirtualInputManager")
local ReplStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Imput = game:GetService("UserInputService")
local COREGUI = game:GetService("CoreGui")
local LP = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")
local RunS = game:GetService("RunService")
local X, Y = 0, 0
local Mouse = LP:GetMouse()
local GetLocalName = LP.Name
local request = (syn and syn.request) or (http and http.request) or http_request
local client = game:GetService("Players").LocalPlayer
local Plr = game:GetService("Players").LocalPlayer
local Data = game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name]
local Plr = game:GetService("Players").LocalPlayer
local TweenService = game:GetService("TweenService")
local Plr = game:GetService("Players").LocalPlayer
local Data = game:GetService("ReplicatedStorage")["Player_Data"][Plr.Name]
local Instance_new = Instance.new
local Vector3_new = Vector3.new
local CFrame_new = CFrame.new
local CFrame_Angles = CFrame.Angles
local coroutine_wrap = coroutine.wrap
local coroutine_yield = coroutine.yield
local coroutine_running = coroutine.running
local string_find = string.find
local string_match = string.match
local string_gsub = string.gsub
local string_sub = string.sub
local string_byte = string.byte
local string_split = string.split
local table_concat = table.concat
local table_insert = table.insert
local debug_traceback = debug.traceback
local math_rad = math.rad
local math_abs = math.abs
local math_floor = math.floor
local pog pog = nil
local game = game
local delay = delay
local wait = wait
local rawget = rawget
local error = error
local rawset = rawset
local assert = function(p1, p2, p3)
if not p1 then
error(p2, p3)
end
end
local newproxy = newproxy
local ipairs = ipairs
local getmetatable = getmetatable
local setmetatable = setmetatable
local tostring = tostring
local tonumber = tonumber
local type = type
local typeof = typeof
local pcall = pcall
local xpcall = xpcall
local setfenv = setfenv
local getfenv = getfenv
local workspace = workspace
local newcclosure = newcclosure or function(p1)
return coroutine_wrap(function(...)
while true do
coroutine_yield(p1(...))
end
end)
end
local workspace = workspace
local player = game.Players.LocalPlayer
local weapons = {}
local mobs = {}
local character = player.Character or player.CharacterAdded:Wait()
local client = game:GetService("Players").LocalPlayer
local user = client.Name
local TweenService = game:GetService("TweenService")
local noclipE = nil
local antifall = nil
local MoveTo = Instance_new("Model").MoveTo
game:GetService("Players").LocalPlayer.DisplayName = "UniverseHub"

function findBoss()
    local largest = math.huge
    local closestChild = nil
    local hrp = character:WaitForChild("HumanoidRootPart")
    for i, v in pairs(game:GetService("Workspace").Mobs.Bosses:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
            local magnitude = (character.HumanoidRootPart.Position - v:GetBoundingBox().Position).magnitude
            if magnitude < largest then
                closestChild = v
                largest = magnitude
            end
        end
    end
    return closestChild
end


Skills = {
    Z = false,
    X = false,
    C = false,
    V = false,
    B = false,
    N = false,
}
local mod = require(game:GetService("ReplicatedStorage").Modules.Server["Skills_Modules_Handler"])
getrenv()._G.handle_irregular = nil
getrenv()._G.cuasdamsndasdasd = nil

_G.cuasdamsndasdasd = function()
    return
end

_G.handle_irregular = function()
    return false
end

mod.Kick = function()
    return
end

game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["Client_Global_utility"].Disabled = true
game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["client_global_delete_script"].Disabled = true
game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["Client_Global_utility"]:GetPropertyChangedSignal("Disabled"):Connect(function()
    game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["Client_Global_utility"].Disabled = true
    game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"]["client_global_delete_script"].Disabled = true
end)

    local GramxProjectFloat = tostring(math.random(0, 100000))
    local TweenFloatVelocity = Vector3.new(0,0,0)
    function CreateTweenFloat()
       local BV = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild(GramxProjectFloat) or Instance.new("BodyVelocity")
       BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
       BV.Name = GramxProjectFloat
       BV.MaxForce = Vector3.new(100000, 100000, 100000)
       BV.Velocity = TweenFloatVelocity
    end
    
    function RemoveDMG()
       local part  =  game:GetService("StarterPlayer").StarterPlayerScripts.Client_Modules.Modules.Extra.Damage_Text
    
       local part1 =  game:GetService("ReplicatedStorage").Assets.Extras.Damage_Text
    
       local part2 = game:GetService("Players").LocalPlayer.PlayerScripts.Client_Modules.Modules.Extra.Damage_Text
    
       if part then
           part:Destroy()
       end
    
       if part1 then
           part1:Destroy()
       end
    
       if part2 then
           part2:Destroy()
       end
    end
    
    function RemovePARTICLES()
       local COINS = game:GetService("ReplicatedStorage").Assets.Extras.Coin
    
       local PARTICLES = game:GetService("ReplicatedStorage").Assets.Particles.Parts
    
       if COINS then
           COINS:Destroy()
       end
    
       if PARTICLES then
           PARTICLES:Destroy()
       end
    end
    
    local function GetDistance(Endpoint)
       if typeof(Endpoint) == "Instance" then
       Endpoint = Vector3.new(Endpoint.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
       elseif typeof(Endpoint) == "CFrame" then
       Endpoint = Vector3.new(Endpoint.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
       end
       local Magnitude = (Endpoint - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       return Magnitude
    end
    
    function Tween(Endpoint)
       if typeof(Endpoint) == "Instance" then
       Endpoint = Endpoint.CFrame
       end
       local TweenFunc = {}
       local Distance = GetDistance(Endpoint)
       local TweenInfo = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance/getgenv().TweenSpeed, Enum.EasingStyle.Linear), {CFrame = Endpoint * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
       TweenInfo:Play()
       function TweenFunc:Cancel()
       TweenInfo:Cancel()
       return false
       end
       if Distance <= 100 then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Endpoint
       TweenInfo:Cancel()
       return false
       end
       return TweenFunc
    end
    
        function findBoss()
            local largest = math.huge
            local closestChild = nil
            local hrp = character:WaitForChild("HumanoidRootPart")
            for i, v in pairs(game:GetService("Workspace").Mobs.Bosses:GetDescendants()) do
                if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                    local magnitude = (character.HumanoidRootPart.Position - v:GetBoundingBox().Position).magnitude
                    if magnitude < largest then
                        closestChild = v
                        largest = magnitude
                    end
                end
            end
            return closestChild
        end

local BossessTable = {"Rengoku","Inosuke","Renpeke","Muichiro Tokito","Enme","Swampy","Akeza","Douma","Tengen","Sound Trainee"}
local bosCFTable = {
    ["Rengoku"] = CFrame.new(3656, 673, -345),
    ["Akeza"] = CFrame.new(2010, 556, -128),
    ["Renpeke"] = CFrame.new(-1258, 601, -650),
    ["Muichiro Tokito"] = CFrame.new(4513, 673, -544),
    ["Enme"] = CFrame.new(1591, 484, -690),
    ["Swampy"] = CFrame.new(-1377, 601, -202),
    ["Douma"] = CFrame.new(-5, 513, -1689),
    ["Tengen"] = CFrame.new(1464, 486, -3118),
    ["Sound Trainee"] = CFrame.new(1897, 663, -2805),
    ["Inosuke"] = CFrame.new(1585, 300, -389),
}

if game.ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("getclientping") then 
    game.ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("getclientping").OnClientInvoke = function() 
        task.wait(5)
        return true 
    end 
end 
    getgenv().FarmMethod = "Above"

    spawn(function()
       while wait() do
           pcall(function()
               SkillActive = AutoUseSkills and (FarmBoss and NearestMobs) or AutoUseSkills and (FarmQuest and NearestMobs) or AutoUseSkills and (FarmMob and NearestMobs) or AutoUseSkills and (AllBosses and NearestMobs)
               if FarmMethod == "Above" then
                   FarmModes = CFrame.new(0, getgenv().Distance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                   for i, v in pairs(LP.PlayerGui.MainGuis.Items.Scroll:GetChildren()) do
                       Insert = true
                       if v.ClassName == "Frame" and v.Name ~= "Health Elixir" and v.Name ~= "Health Regen Elixir" and v.Name ~= "Stamina Elixir" and v.Name ~= "Bandage" then
                           for i, v2 in pairs(invTable) do
                               if v2 == v.Name then
                                   Insert = false
                               end
                           end
                           if Insert == true then
                               table.insert(invTable, v.Name)
                           end
                       end
                   end
               end
           end)
       end
    end)
    
    
    spawn(function()
       game:GetService("RunService").Stepped:Connect(function()
           if getgenv().AllBosses or TPtoLocation or TPtoTrainer or getgenv().GotoMuzan or FarmBoss then
               for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                   if v:IsA("BasePart") then
                       v.CanCollide = false    
                   end
                   if v:IsA("Humanoid") then
                       v:ChangeState(11)
                   end
               end
           end
       end)
    end)
    
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    game.NetworkClient.ChildRemoved:Connect(function()
      game:GetService("TeleportService"):Teleport(5956785391)
    end)
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            game:GetService("TeleportService"):Teleport(5956785391)
        end
    end)
        
    local function GetNearestBoss()
    
       local Bosses = game:GetService("Workspace").Mobs:GetDescendants()
       local BossesTable = {}
    
       for i,v in pairs(Bosses) do
           if table.find(BossessTable, v.Name) and v:IsA("Model") and v:FindFirstChild("Humanoid") then
               if v.Humanoid.Health > 0 then
                   table.insert(BossesTable, v)
               end
           end
       end
    
       local NearestBoss = nil
       local NearestBossDistance = math.huge
    
       for i,v in pairs(BossesTable) do
           local Distance = GetDistance(v:GetModelCFrame() * FarmModes)
           if Distance < NearestBossDistance then
               NearestBoss = v
               NearestBossDistance = Distance
           end
       end
    
       return NearestBoss
    end
    
    spawn(function()
       while task.wait() do
           pcall(function()
               if getgenv().AllBosses then
    
                   if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                       antifall3 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                       antifall3.Velocity = Vector3.new(0, 0, 0)
                       antifall3.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                   elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                       local v = GetNearestBoss()
    
                                   repeat task.wait()                                      
                                       if GetDistance(v:GetModelCFrame() * FarmModes) < 25 and GetDistance(v:GetModelCFrame() * FarmModes) < 150 then
                                           if TweenFa then
                                           TweenFa:Cancel()
                                           wait(.1)
                                           end
                                           LP.Character.HumanoidRootPart.CFrame = v:GetModelCFrame() * FarmModes
                                       else
                                           TweenFa = Tween(v:GetModelCFrame() * FarmModes)
                                       end
                                       if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v:GetModelCFrame() * FarmModes) < 10 then
                                           NearestMobs = true
                                       elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v:GetModelCFrame() * FarmModes) > 10 then
                                           NearestMobs = false
                                       end
                                   until not getgenv().AllBosses or not v.Parent or v.Humanoid.Health <= 0 or not v:IsDescendantOf(workspace)
                                   NearestMobs = false
                           
                       
                   end
               else
                   antifall3:Destroy()
               end
               if getgenv().AllBosses == false then
                   TweenFa:Cancel()
               end
           end)
       end
    end)
        
    spawn(function()
       while task.wait() do
          if AutoCollectChest then
                    for _, v in pairs(game:GetService("Workspace").Debree:GetChildren()) do
                       if v.Name == "Loot_Chest" then
                          for _, c in pairs(v:FindFirstChild("Drops"):GetChildren()) do
                            local args = { [1] = c.Name }
                                v["Add_To_Inventory"]:InvokeServer(unpack(args))
                         end
                     end
                 end
            end
         end
    end)
    
    spawn(function()
       while task.wait() do
          if AutoEatSouls then
             for i,v in pairs(game:GetService("Workspace").Debree:GetChildren()) do
                if v.Name == "Soul" then
                   pcall(function()
                      workspace.Debree.Soul.Handle.Eatthedamnsoul:FireServer()
                   end)
                end
             end
          end
       end
    end)

getgenv().TweenSpeed = 400
AutoBoss:CreateSlider({
    Name = "Tween Speed",
    Range = {10, 500},
    Increment = 25,
    CurrentValue = getgenv().TweenSpeed,
    Callback = function(Value)
        getgenv().TweenSpeed = Value
    end
})

getgenv().Distance = 8
AutoBoss:CreateSlider({
    Name = "Farm Dist",
    Range = {0, 10},
    Increment = 1,
    CurrentValue = 10,
    Callback = function(Value)
        getgenv().Distance = Value
    end,
})

AutoBoss:CreateToggle({
    Name = "Auto Farm Boss",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().AllBosses = Value
    end,
})

AutoBoss:CreateLabel("Race Changer")

local Button = AutoBoss:CreateButton({
   Name = "Human",
   Callback = function()
        local localplayer = game:GetService("Players").LocalPlayer
        game:GetService("ReplicatedStorage").Player_Data[localplayer.Name].Race.Value = 1
   end,
})

local Button = AutoBoss:CreateButton({
   Name = "Slayer",
   Callback = function()
        local localplayer = game:GetService("Players").LocalPlayer
        game:GetService("ReplicatedStorage").Player_Data[localplayer.Name].Race.Value = 2
   end,
})

local Button = AutoBoss:CreateButton({
   Name = "Demon",
   Callback = function()
        local localplayer = game:GetService("Players").LocalPlayer
        game:GetService("ReplicatedStorage").Player_Data[localplayer.Name].Race.Value = 3
   end,
})
local Button = AutoBoss:CreateButton({
   Name = "Hybrid",
   Callback = function()
        local localplayer = game:GetService("Players").LocalPlayer
        game:GetService("ReplicatedStorage").Player_Data[localplayer.Name].Race.Value = 4
   end,
})

killauraTab:CreateToggle({
    Name = "Thunder Aura",
    CurrentValue = false,
    Callback = function(v)
        _G.thunderkillaura = v
        thunderglobal()
    end
})
------------------KillAura--------------------

local Toggle = Bypasses:CreateToggle({
    Name = "Bypass Arrow",
    CurrentValue = false,
    Callback = function(Value)
        _G.bypass = Value
 
        if _G.bypass then
            while _G.bypass do
                local ohString1 = "skil_ting_asd"
                local ohInstance2 = game:GetService("Players").LocalPlayer
                local ohString3 = "arrow_knock_back"
                local ohNumber4 = 5
 
                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(ohString1, ohInstance2, ohString3, ohNumber4)
 
                wait(6)
            end
        end
    end,
 })

local toggle = false -- Variável para controlar o toggle

local function attackLoop()
    while toggle do
        local ohString1 = "arrow_knock_back_damage"
        local ohInstance2 = game:GetService("Players").LocalPlayer
        local ohInstance4 = nil -- Variável para armazenar o NPC mais próximo encontrado
        local ohNumber5 = 999999999
        local ohNumber6 = 999999999

        local mob = findBoss() -- Encontra o NPC mais próximo
        if mob and mob:FindFirstChild("HumanoidRootPart") then
            ohInstance4 = mob -- Armazena o NPC mais próximo na variável
            local ohCFrame3 = mob.HumanoidRootPart.CFrame -- Obtém o CFrame do NPC mais próximo

            for i = 1, 3 do
                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohCFrame3, ohInstance4, ohNumber5, ohNumber6)
            end
        end
        wait(0.5)
    end
end

local Toggle = Bypasses:CreateToggle({
    Name = "KillAura Arrow",
    CurrentValue = false,
    Callback = function(value)
        toggle = value
        if toggle then
            attackLoop() -- Inicia o loop
        end
    end,
})

killauraTab:CreateLabel("OP KillAura")

killauraTab:CreateToggle({
    Name = "Fist",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "fist_combat" 
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.7)
wait(1) end
    else
        getgenv().killaura = false
        end
    end
})
killauraTab:CreateToggle({
    Name = "Sword",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "Sword_Combat_Slash"
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.7)
wait(1) end
    else
        getgenv().killaura = false
        end
    end
})
killauraTab:CreateToggle({
    Name = "Fans",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "fans_combat_slash" 
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.7)
wait(1) end
    else
        getgenv().killaura = false
        end
    end
})
killauraTab:CreateToggle({
    Name = "Scythe",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "Scythe_Combat_Slash" 
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.7)
wait(1) end
    else
        getgenv().killaura = false
        end
    end
})
killauraTab:CreateToggle({
    Name = "Claw",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "claw_Combat_Slash" 
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.7)
wait(1) end
    else
        getgenv().killaura = false
        end
    end
})

killauraTab:CreateLabel("Safe KillAura")

killauraTab:CreateToggle({
    Name = "Fist",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "fist_combat" 
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
wait(2) 
end 

    else
        getgenv().killaura = false
        end
    end
})
killauraTab:CreateToggle({
    Name = "Sword",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "Sword_Combat_Slash"
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
wait(2) 
end
    else
        getgenv().killaura = false
        end
    end
})
killauraTab:CreateToggle({
    Name = "Fans",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "fans_combat_slash" 
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")

wait(2) end
    else
        getgenv().killaura = false
        end
    end
})
killauraTab:CreateToggle({
    Name = "Scythe",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "Scythe_Combat_Slash" 
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
wait(2) end
    else
        getgenv().killaura = false
        end
    end
})
killauraTab:CreateToggle({
    Name = "Claw",
    Callback = function (bool)
        if bool then
            getgenv().killaura = true -- an toggle, set false if u wanna disable, and true if u wanna enable.
    getgenv().method = "claw_Combat_Slash" 
    -- theres 5 methods of attacking, fist_combat - fist,
    -- fans_combat_slash - war fans, 
    -- claw_Combat_Slash - claws, 
    -- Scythe_Combat_Slash - scythe, 
    -- Sword_Combat_Slash - sword.
    
    -- // locals
    local ReplStorage = game:GetService("ReplicatedStorage") -- não altere
    local Players = game:GetService("Players")
    local client = game:GetService("Players").LocalPlayer
    
while killaura do -- verifica se está ativo o toggle
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 3, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 4, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, inf, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1234, "ground_slash")
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 1, "ground_slash")
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 2, "ground_slash")
wait(2) end
    else
        getgenv().killaura = false
        end
    end
})
--------------------------- Teleports2 -----------------------------
Teleports2:CreateButton({
    Name = "Nomay Village",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 48831.930957
local ohString3 = "Nomay Village"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end
})

Teleports2:CreateButton({
    Name = "Wop City",
    Callback = function ()
local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 48874.3168601
local ohString3 = "Wop City"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end
})

Teleports2:CreateButton({
    Name = "Mugay Train Station",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48901.34144
        local ohString3 = "Mugen Train Station"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
            end
})

Teleports2:CreateButton({
    Name = "Village 2",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48914.7027964
        local ohString3 = "Village 2"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})

Teleports2:CreateButton({
    Name = "Snowy Place",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48930.8501156
        local ohString3 = "Snowy Place"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})

Teleports2:CreateButton({
    Name = "Cave 1",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48974.763250699994
        local ohString3 = "Cave 1"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})

Teleports2:CreateButton({
    Name = "Mist trainer location",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49037.9464306
        local ohString3 = "Mist trainer location"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})

Teleports2:CreateButton({
    Name = "Cave 2",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49286.9347697
        local ohString3 = "Cave 2"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})

Teleports2:CreateButton({
    Name = "Sound Cave",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49297.9620753
        local ohString3 = "Sound Cave"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})

Teleports2:CreateButton({
    Name = "Akeza Cave",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49440.4521043
        local ohString3 = "Akeza Cave"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
            end
})

Teleports2:CreateButton({
    Name = "Beast Cave",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49475.5494584
        local ohString3 = "Beast Cave"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})

Teleports2:CreateButton({
    Name = "Wop's training grounds",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49529.417110899994
        local ohString3 = "Wop's training grounds"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})

Teleports2:CreateButton({
    Name = "Devourers Jaw",
    Callback = function ()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49548.625795199994
        local ohString3 = "Devourers Jaw"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)    end
})


Teleports2:CreateButton({
    Name = "Tsune Village(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(1214, 569, 77)
    end
})

Teleports2:CreateButton({
    Name = "Split Boulder(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(1257.22046, 497.445526, -271.497253, -0.995884061, 0, 0.090637207, 0, 1.00000012, 0, -0.090637207, 0, -0.995884061)
    end
})
Teleports2:CreateButton({
    Name = "Meditate(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(130.404846, 599.6427, 520.139404, -0.573853314, 0, 0.818958104, 0, 1, 0, -0.818958223, 0, -0.573853254)
    end
})

Teleports2:CreateButton({
    Name = "Stuck Place Mugay Train(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame =CFrame.new(706.238281, 511.73587, 1135.88721)
    end
})

Teleports2:CreateButton({
    Name = "Stuck Place Akeza 2(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame =CFrame.new(2013.37976, 482.645813, -108.943802)
    end
})

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_C:FireServer(ohString1, ohNumber2, ohString3, ohCFrame4, ohInstance5)

TeleportTween2:CreateButton({
    Name = "SoundCave",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(1816.21204, 486.852661, -2757.24072)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Devourer's Jaw",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(481.2453, 507.410645, -1868.00842)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Beast Cave",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(1644.35266, 299.606079, -350.906494)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Frozen Lake",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(2703, 675, -701)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Nomway Village",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(3562, 673, -2109)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Wop City",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(-31, 601, -431)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Cave 1",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(4222, 674, 582)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Cave 2",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(1183, 487, -1192)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Tsune Village",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(1214, 569, 77)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Akeza Cave",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(1933, 556, -142)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Wop Training Grounds",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(224, 597, 483)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Mugay Train",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(733, 500, 1056)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Mist Training",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(4328.71973, 672.657471, -566.535889)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Split Boulder",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(1257.22046, 497.445526, -271.497253)

        ImprovedTeleport(targetPosition)
    end
})

TeleportTween2:CreateButton({
    Name = "Meditate",
    Callback = function ()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart

        local TeleportSpeed = 250
        local NextFrame = RunService.Heartbeat

        local function ImprovedTeleport(Target)
            if typeof(Target) == "Instance" and Target:IsA("BasePart") then
                Target = Target.Position
            elseif typeof(Target) == "CFrame" then
                Target = Target.Position
            end

            local StartingPosition = HumanoidRootPart.Position
            local PositionDelta = Target - StartingPosition
            local StartTime = tick()
            local TotalDuration = PositionDelta.Magnitude / TeleportSpeed

            repeat
                NextFrame:Wait()
                local Delta = tick() - StartTime
                local Progress = math.min(Delta / TotalDuration, 1)
                local MappedPosition = StartingPosition + PositionDelta * Progress
                HumanoidRootPart.Velocity = Vector3.new()
                HumanoidRootPart.CFrame = CFrame.new(MappedPosition)
            until (HumanoidRootPart.Position - Target).Magnitude <= TeleportSpeed / 2

            HumanoidRootPart.Anchored = false
            HumanoidRootPart.CFrame = CFrame.new(Target)
        end

        local targetPosition = Vector3.new(130.404846, 599.6427, 520.139404)

        ImprovedTeleport(targetPosition)
    end
})

local shouldTeleport = false 

local Toggle = Misc:CreateToggle({
   Name = "Auto Rejoin",
   CurrentValue = false,
   Callback = function(enabled)
       shouldTeleport = enabled
   end,
})

repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')

local lp, po, ts = game:GetService('Players').LocalPlayer, game.CoreGui.RobloxPromptGui.promptOverlay, game:GetService('TeleportService')

po.ChildAdded:connect(function(a)
    if a.Name == 'ErrorPrompt' then
        repeat
            if shouldTeleport then
                ts:Teleport(5956785391)
                wait(4)
            else
                break
            end
        until false
    end
end)

Misc:CreateButton({
    Name = "GamePass Unlocker",
    Callback = function()
        local player = game.Players.LocalPlayer

    local gamepass1 = Instance.new("StringValue")
    local gamepass3 = Instance.new("StringValue")
    local gamepass4 = Instance.new("StringValue")
    local gamepass5 = Instance.new("StringValue")
    gamepass1.Name = "18589360"
    gamepass3.Name = "18710993"
    gamepass4.Name = "19241624"
    gamepass5.Name = "46503236"
    gamepass1.Parent = player.gamepasses
    gamepass3.Parent = player.gamepasses
    gamepass4.Parent = player.gamepasses
    gamepass5.Parent = player.gamepasses

    --18589360 = Concentração Total Gamepass Z
    --18710993 = Disable Uniform
    --19241624 = Gourd Durability Viewer Z
    --46503236 = Skip Spin Z

    end
})

Misc:CreateToggle({
    Name = "AutoCollect",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().AutoCollectChest = Value
    end,
})

spawn(function()
    while task.wait() do
        if getgenv().AutoCollectChest then
            for _, v in pairs(game:GetService("Workspace").Debree:GetChildren()) do
                if v.Name == "Loot_Chest" then
                    for _, c in pairs(v:FindFirstChild("Drops"):GetChildren()) do
                        local args = { [1] = c.Name }
                        v["Add_To_Inventory"]:InvokeServer(unpack(args))
                    end
                end
            end
        end
    end
end)

Misc:CreateToggle({
    Name = "Inf Stamina",
    Callback = function (bool)
        if bool then
            if not isRunning then
                isRunning = true
                staminaLoop = coroutine.wrap(function()
                    while isRunning do
                        getrenv()._G:Stamina(-1)
                        task.wait()
                    end
                end)
                staminaLoop()
            end
        else
            if isRunning then
                isRunning = false
            end
        end
    end
})

Misc:CreateToggle({
    Name = "Inf Breathing",
    Callback = function (bool)
        isBreathing = bool
    end
})

spawn(function()
    while wait() do
        if isBreathing then
            getrenv()._G.AddBreath("gpthebest", 50)
        end
    end
end)

local Toggle = Misc:CreateToggle({
    Name = "No Sun Burn",
    CurrentValue = false,
    Callback = function(value)
       if value then
        game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = true
       else
        game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = false
       end
    end,
 })

Misc:CreateToggle({
    Name = "NoCoolDown(DONT SPAM!!)",
    Callback = function (bool)
        getgenv().NoCdMoves = bool -- Atualiza o estado da variável NoCdMoves com o valor do toggle

        -- Verifica se a função oldindex já foi definida
        if oldindex then
            return -- Se já foi definida, apenas retorna
        end
    
        -- Define a função original __index como oldindex
        oldindex = hookmetamethod(game, "__index", function(index, value)
            if tostring(index) == "LastUsed" and getgenv().NoCdMoves then
                return 0
            end
            return oldindex(index, value)
        end)
    end
})

local Toggle = Misc:CreateToggle({
    Name = "Auto Meditate",
    CurrentValue = false,
    Callback = function(bool)
        getgenv().AutoMeditate = bool
    end,
})

function exec()
    while wait() do
        if getgenv().AutoMeditate then
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["Meditate_gui"].Holder.LocalScript.Value.Value = 100
            end)
        end
    end
end

spawn(exec)

local Toggle = Misc:CreateToggle({
    Name = "Auto Split",
    CurrentValue = false,
    Callback = function(bool)
       getgenv().AutoSplit = bool
    end,
 })
 
 function exec()
    while task.wait() do
       if getgenv().AutoSplit then
          pcall(function()
             game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["boulder_split_ui"].Holder.LocalScript.Value.Value = 10000
          end)
       end
    end
 end
 
 spawn(exec)

 local Toggle = Misc:CreateToggle({
    Name = "No Drown",
    CurrentValue = false,
    Callback = function()
       getgenv().NoDrown = not getgenv().NoDrown
    end,
})
 
task.spawn(function()
    while true do
       for i, v in next, getgc(true) do
          if type(v) == "table" and rawget(v, "swim_bar") then
             if getgenv().NoDrown then
                rawset(v, "swim_bar", {
                   [1] = 2,
                   [2] = 2
                })
             end
          end
       end
       task.wait(6) -- Adiciona um intervalo de espera de 0.1 segundos
    end
end)

local vim = game:GetService('VirtualInputManager')
local rs = game:GetService('RunService')
local clash = false

local function pressKey(key)
    vim:SendKeyEvent(true, key, false, game)
    wait()
    vim:SendKeyEvent(false, key, false, game)
end

local function instanced()
    while clash do
        rs.Heartbeat:Wait(0.3)
        pressKey(Enum.KeyCode[game.Players.LocalPlayer.PlayerGui["universal_client_scripts"].Clashing2["Clash_Ui2"].Holder:WaitForChild('Front').Text])
    end
end

local Toggle = Misc:CreateToggle({
    Name = "AutoClash",
    CurrentValue = false,
    Callback = function(Value)
        clash = Value
        if clash then
            instanced()
        end
    end,
})

CurrentValue = false

local playerName = game.Players.LocalPlayer.Name

local function changeValue(instance, value)
    local args = {"Change_Value", instance, value}
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
end

local function changeColorSmoothly(instance, targetValue, duration)
    local initialValue = instance.Value
    local step = (targetValue - initialValue) / (duration / 0.01)
    local currentTime = 0

    while currentTime < duration do
        instance.Value = instance.Value + step
        changeValue(instance, instance.Value)
        wait(0.01)
        currentTime = currentTime + 0.01
    end
end

local skinColor = game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Skin_Color

local toggleEnabled = false

local function toggleScript()
    toggleEnabled = not toggleEnabled
    if toggleEnabled then
        spawn(function()
            while toggleEnabled do
                changeColorSmoothly(skinColor.R, math.random(), 0.15)
                changeColorSmoothly(skinColor.G, math.random(), 0.15)
                changeColorSmoothly(skinColor.B, math.random(), 0.15) 
            end
        end)
    end
end

local Toggle = Misc:CreateToggle({
    Name = "RGB Skin",
    CurrentValue = false,
    Callback = toggleScript,
})
 
local Toggle = Misc:CreateToggle({
    Name = "FPS Boost",
    CurrentValue = false,
    Callback = function(value)
       if value then
         game:GetService("RunService"):Set3dRenderingEnabled(false)
         local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end       else
         game:GetService("RunService"):Set3dRenderingEnabled(true)
       end
    end,
 })

Misc:CreateButton({
   Name = "NPC Block Break",
   Callback = function()
    game.Workspace.Mobs.DescendantAdded:Connect(function(c)
        if c.Name == "Blocking" then 
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer("remove_blocking", c.Parent)
        end
    end)
   end,
})

Misc:CreateButton({
   Name = "Reset",
   Callback = function()
    local args = {
        [1] = "Add_Knockedout"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
    wait()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
    wait()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
   end,
})

Misc:CreateLabel("Buffs")

local Button = Misc:CreateButton({
    Name = "Wagon God (Activator)",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer

        local ohString1 = "AddQuest"
        local ohString2 = "Players." .. player.Name .. ".PlayerGui.Npc_Dialogue.LocalScript.Functions"
        local ohNumber3 = 18455.7521223
        local ohInstance4 = game:GetService("ReplicatedStorage").Player_Data[player.Name].Quest
        local ohTable5 = {
            ["List"] = {
                [1] = {
                    ["Name"] = "Deliver wagon",
                    ["Progress"] = {
                        [1] = 0,
                        [2] = 1
                    }
                }
            },
            ["Current"] = "Deliver grandpa Wagwon's wagon"
        }

        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohString2, ohNumber3, ohInstance4, ohTable5)

        wait(0.4)

        local player = game.Players.LocalPlayer
        local wagonName = player.Name .. "'s Wagon"
        local wagon = player.Character:FindFirstChild(wagonName)
        if wagon then
            wagon:Destroy()
        end

        wait(0.2)

        local player = game.Players.LocalPlayer
        local playerGui = player.PlayerGui
        local quest = playerGui.Menu.Quest

        if quest then
            quest:Destroy()
        end
    end,
})

local ToggleSwampyEnabled = false
local ToggleDreamEnabled = false
local ToggleIceEnabled = false
local ToggleSoundEnabled = false
local ToggleShockWaveEnabled = false

local AutoInvincibleSwampy = Misc:CreateToggle({
    Name = "Invincible (Swampy)",
    CurrentValue = false,
    Callback = function(v)
        ToggleSwampyEnabled = v
        
        if ToggleSwampyEnabled then
            ToggleDreamEnabled = false
            ToggleIceEnabled = false
            ToggleSoundEnabled = false
            ToggleShockWaveEnabled = false
            toggleInvincibleSwampy()
        end
    end
})

local AutoInvincibleDream = Misc:CreateToggle({
    Name = "Invincible (Dream)",
    CurrentValue = false,
    Callback = function(v)
        ToggleDreamEnabled = v
        
        if ToggleDreamEnabled then
            ToggleSwampyEnabled = false
            ToggleIceEnabled = false
            ToggleSoundEnabled = false
            ToggleShockWaveEnabled = false
            toggleInvincibleDream()
        end
    end
})

local AutoInvincibleIce = Misc:CreateToggle({
    Name = "Invincible (Ice)",
    CurrentValue = false,
    Callback = function(v)
        ToggleIceEnabled = v
        
        if ToggleIceEnabled then
            ToggleSwampyEnabled = false
            ToggleDreamEnabled = false
            ToggleSoundEnabled = false
            ToggleShockWaveEnabled = false
            toggleInvincibleIce()
        end
    end
})

local AutoInvincibleSound = Misc:CreateToggle({
    Name = "Invincible (Sound)",
    CurrentValue = false,
    Callback = function(v)
        ToggleSoundEnabled = v
        
        if ToggleSoundEnabled then
            ToggleSwampyEnabled = false
            ToggleDreamEnabled = false
            ToggleIceEnabled = false
            ToggleShockWaveEnabled = false
            toggleInvincibleSound()
        end
    end
})

local AutoInvincibleShockWave = Misc:CreateToggle({
    Name = "Invincible (ShockWave)",
    CurrentValue = false,
    Callback = function(v)
        ToggleShockWaveEnabled = v
        
        if ToggleShockWaveEnabled then
            ToggleSwampyEnabled = false
            ToggleDreamEnabled = false
            ToggleIceEnabled = false
            ToggleSoundEnabled = false
            toggleInvincibleShockWave()
        end
    end
})

function toggleInvincibleSwampy()
    while ToggleSwampyEnabled do
        local ohString1 = "skil_ting_asd"
        local ohInstance2 = game:GetService("Players").LocalPlayer
        local ohString3 = "swamp_bda_swamp_domain"
        local ohNumber4 = 1
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohString3, ohNumber4)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohString3, ohNumber4)
        task.wait(0.5)
    end
end

function toggleInvincibleDream()
    while ToggleDreamEnabled do
        local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "dream_bda_flesh_monster",
            [4] = 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
        task.wait(0.5)
    end
end

function toggleInvincibleIce()
    while ToggleIceEnabled do
        local ohString1 = "skil_ting_asd"
        local ohInstance2 = game:GetService("Players").LocalPlayer
        local ohString3 = "ice_demon_art_bodhisatva"
        local ohNumber4 = 1
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohString3, ohNumber4)
        task.wait(0.5)
    end
end

function toggleInvincibleSound()
    while ToggleSoundEnabled do
        local ohString1 = "skil_ting_asd"
        local ohInstance2 = game:GetService("Players").LocalPlayer
        local ohString3 = "sound_breathing_smoke_screen"
        local ohNumber4 = 1
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohString3, ohNumber4)
        task.wait(0.5)
    end
end

function toggleInvincibleShockWave()
    while ToggleShockWaveEnabled do
        local A_1 = "skil_ting_asd"
        local A_2 = game:GetService("Players").LocalPlayer
        local A_3 = "akaza_bda_compass_needle"
        local A_4 = 1
        local Event = game:GetService("ReplicatedStorage").Remotes["To_Server"]["Handle_Initiate_S"]
        Event:FireServer(A_1, A_2, A_3, A_4)
        task.wait(0.5)
    end
end

local Toggle = Misc:CreateToggle({
   Name = "Invencible (Scythe)",
   CurrentValue = false,
   Callback = function(enabled)
      if enabled then
         ScytheGod = true
         while ScytheGod do
local ohString1 = "skil_ting_asd"
local ohInstance2 = game:GetService("Players").LocalPlayer
local ohString3 = "scythe_asteroid_reap"
local ohNumber4 = 1
game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohString3, ohNumber4)
            task.wait(0.5)
         end
      else
         ScytheGod = false
      end
   end,
})

local Toggle = Misc:CreateToggle({
   Name = "Invencible (Water)",
   CurrentValue = false,
   Callback = function(enabled)
      if enabled then
         WaterGod = true
         while WaterGod do
            local ohString1 = "skil_ting_asd"
            local ohInstance2 = game:GetService("Players").LocalPlayer
            local ohString3 = "Water_fall_basin"
            local ohNumber4 = 1
            game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohString3, ohNumber4)
            task.wait(0.5)
         end
      else
         WaterGod = false
      end
   end,
})

Misc:CreateToggle({
    Name = "GodMode (Kamado)",
    CurrentValue = false,
    SectionParent = Settings,
    Callback = function(v)
        getgenv().god = v
        if getgenv().god then
            local ohBoolean1 = true

            game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(ohBoolean1)
        elseif not getgenv().god then
            local ohBoolean1 = false

            game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(ohBoolean1)
        end
end
})

Misc:CreateToggle({
    Name = "Inf Breath Regen",
    Callback = function (bool)
        if bool then
            toggleActive = true
            toggleBreathing()
        else
            toggleActive = false
        end
    
    function toggleBreathing()
        if toggleActive then
            game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(true)
            wait(25)
            game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(false)
            wait(0.01) -- Aguarda uma pequena fração de segundo para evitar uma chamada imediata ao loop
            toggleBreathing()
        end
    end
    end
})

Misc:CreateToggle({
    Name = "WarFans Buff",
    Callback = function (bool)
        toggleActivated = bool -- Atualiza o estado do toggle

    if toggleActivated then
        running = true -- Inicia o loop
        while running do -- Executa o loop enquanto running for verdadeiro
            game:GetService("ReplicatedStorage").Remotes.war_Drums_remote:FireServer(true)
            wait(20.1) -- Aguarda um tempo antes de reiniciar o buff (ajuste conforme necessário)
        end
    else
        running = false -- Interrompe o loop
        game:GetService("ReplicatedStorage").Remotes.war_Drums_remote:FireServer(false)
    end
    end
})

Misc:CreateToggle({
    Name = "Furiosity Buff",
    Callback = function (bool)
        toggleActivated = bool -- Atualiza o estado do toggle

    if toggleActivated then
        running = true -- Inicia o loop
        while running do -- Executa o loop enquanto running for verdadeiro
local ohBoolean1 = true

game:GetService("ReplicatedStorage").Remotes.clan_furiosity_add:FireServer(ohBoolean1)
            wait(16.5)
        end
    else
        running = false
local ohBoolean1 = false

game:GetService("ReplicatedStorage").Remotes.clan_furiosity_add:FireServer(ohBoolean1)
    end
    end
})

Misc:CreateToggle({
    Name = "Rengoku (Human)",
    Callback = function (bool)
        toggleActivated = bool -- Atualiza o estado do toggle

    if toggleActivated then
        running = true -- Inicia o loop
        while running do -- Executa o loop enquanto running for verdadeiro
            game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(true)
            wait(28) -- Aguarda um tempo antes de reiniciar o buff (ajuste conforme necessário)
            game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(false)
            wait(3)
        end
    else
        running = false -- Interrompe o loop
        game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(false)
    end
    end
})

Misc:CreateToggle({
    Name = "GodSpeed (Human)",
    Callback = function (bool)
        toggleActivated = bool -- Atualiza o estado do toggle

        local args = {
            [1] = toggleActivated
        }

        game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(args[1])
    end
})

Misc:CreateLabel("AutoSkil")

local AutoSkill = Misc:CreateToggle({
    Name = "Enable Auto Skill",
    CurrentValue = false,
    SectionParent = Miscs,
    Flag = "Skills",
    Callback = function(value)
        using_move = false
        stop_kill_aura = false
        _G.SkillMastery = value
        while _G.SkillMastery and task.wait() do
            for i,v in next, Skills do
                if v then
                    using_move = true
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(v, i, false, game)
                using_move = false
                game:GetService("VirtualInputManager"):SendKeyEvent(false, i, false, game)
            end
        end
    end,
})

for i,v in next, Skills do
    local AutoUse = Misc:CreateToggle({
        Name = "Auto " .. i,
        CurrentValue = false,
        SectionParent = Miscs,
        Flag = "Skills",
        Callback = function(value)
            Skills[i] = value
        end,
    })
end

Bypasses:CreateToggle({
    Name = "Thunder Bypass",
    Callback = function(v)
        _G.thunderbypass = v
        thunderbypass()
    end
})

function thunderbypass()
    if _G.thunderbypass then
        loop = true
    else
        loop = false
    end
    
    while loop do
local ohString1 = "skil_ting_asd"
local ohInstance2 = game:GetService("Players").LocalPlayer
local ohString3 = "Thunderbreathingrapidslashes"
local ohNumber4 = 5

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohString3, ohNumber4)
        wait(8)
    end
end

function thunderglobal()
    if _G.thunderkillaura then 
        globalkill1 = true
    else
        globalkill1 = false
    end

    while globalkill1 do
        local success, error = pcall(function()
        local LP = game:GetService("Players").LocalPlayer
local ohString1 = "ricespiritdamage"
local ohInstance2 = game:GetService("Players").LocalPlayer
local ohCFrame3 = LP.Character.HumanoidRootPart.CFrame
local ohNumber4 = 60

game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohCFrame3, ohNumber4)
        end)

        if not success then
        end

        if someCondition then
            isRunning = false
        end

        wait(0.55)
    end
end

            local LP = game:GetService("Players").LocalPlayer
            local runLoop = false
            
            local function invokeServer(ohString1, ohInstance2, ohCFrame3, ohInstance4, ohNumber5, ohNumber6)
                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(ohString1, ohInstance2, ohCFrame3, ohInstance4, ohNumber5, ohNumber6)
            end

local url = "" -- Variável para armazenar o valor do webhook
local isSendingEnabled = false -- Variável para controlar se o envio está habilitado ou não
local itemDelay = 5 -- Atraso em segundos entre o envio de cada item
local waitForPickup = true -- Defina como true se você quiser esperar o jogador pegar o item antes de enviar a mensagem

local Webhook = webhook:CreateInput({
    Name = "Webhook For Autoloot",
    PlaceholderText = "WEBHOOK!!!",
    OnEnter = false,
    RemoveTextAfterFocusLost = false,
    Callback = function(v)
        url = v
    end,
})

local Toggle = webhook:CreateToggle({
    Name = "Drop WebHook",
    CurrentValue = false,
    Callback = function(enabled)
        isSendingEnabled = enabled
    end,
})

task.spawn(function()
    while task.wait() do
        pcall(function()
            if isSendingEnabled then
                -- Se o envio estiver habilitado, execute o código para enviar a mensagem no webhook
                -- Verifique se 'url' possui um valor válido antes de enviar a mensagem
                if url and url ~= "" then
                    local player = game.Players.LocalPlayer
                    local playerName = player.Name
                    local userId = player.UserId
                    local avatarUrl = string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", userId)

                    local lootChests = game:GetService("Workspace").Debree:GetDescendants()
                    for _, chest in ipairs(lootChests) do
                        if chest.Name == "Loot_Chest" and chest:FindFirstChild("Drops") then
                            local remote = chest:WaitForChild("Add_To_Inventory")
                            for _, drop in ipairs(chest.Drops:GetChildren()) do
                                remote:InvokeServer(drop.Name)
                                if waitForPickup then
                                    -- Aguardar o jogador pegar o item antes de enviar a mensagem
                                    repeat
                                        task.wait()
                                    until not drop:IsDescendantOf(player.Backpack) and not drop:IsDescendantOf(player.Character)
                                end

                                -- Enviar a mensagem no webhook
                                local data = {
                                    ["content"] = "Drop!!!",
                                    ["embeds"] = {
                                        {
                                            ["title"] = "GAME DROPS!",
                                            ["type"] = "rich",
                                            ["color"] = tonumber(0x7269da),
                                            ["fields"] = {
                                                {
                                                    ["name"] = "Drop:",
                                                    ["value"] = "| "..drop.Name.." |",
                                                    ["inline"] = true
                                                },
                                                {
                                                    ["name"] = "Username",
                                                    ["value"] = "|| "..playerName.." ||",
                                                    ["inline"] = true
                                                },
                                            },
                                            ["thumbnail"] = {
                                                ["url"] = avatarUrl,
                                            }
                                        }
                                    }
                                }

                                local headers = {
                                    ["content-type"] = "application/json"
                                }

                                local httpService = game:GetService("HttpService")
                                local jsonData = httpService:JSONEncode(data)

                                local httpModule = http_request or request or HttpPost or syn.request
                                local requestParams = {
                                    Url = url,
                                    Method = "POST",
                                    Headers = headers,
                                    Body = jsonData
                                }

                                httpModule(requestParams)

                                -- Aguardar o atraso entre os envios de item
                                task.wait(itemDelay)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local Webhook = webhook:CreateInput({
    Name = "Webhook",
    PlaceholderText = "WEBHOOK!!!",
    OnEnter = false,
    RemoveTextAfterFocusLost = false,
    Callback = function(v)
        url = v
    end,
})

local Toggle = webhook:CreateToggle({
    Name = "Kick WebHook",
    CurrentValue = false,
    Callback = function(enabled)
        isSendingEnabled = enabled
    end,
})

local function CheckPlayerExpulsion()
    local po = game.CoreGui.RobloxPromptGui.promptOverlay

    po.ChildAdded:Connect(function(a)
        if a.Name == 'ErrorPrompt' and isSendingEnabled and url then
            -- O jogador local foi expulso do jogo
            local playerName = player.Name
            local userId = player.UserId
            local avatarUrl = string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", userId)

            local data = {
                ["content"] = "Estupido",
                ["embeds"] = {
                    {
                        ["title"] = "Expulsão!",
                        ["type"] = "rich",
                        ["color"] = tonumber(0xFF0000),
                        ["fields"] = {
                            {
                                ["name"] = "Username",
                                ["value"] = "|| "..playerName.." ||",
                                ["inline"] = true
                            },
                        },
                        ["thumbnail"] = {
                            ["url"] = avatarUrl,
                        }
                    }
                }
            }

            local headers = {
                ["content-type"] = "application/json"
            }

            local jsonData = HttpService:JSONEncode(data)

            local httpModule = http_request or request or HttpPost or syn.request
            local requestParams = {
                Url = url,
                Method = "POST",
                Headers = headers,
                Body = jsonData
            }

            httpModule(requestParams)
        end
    end)
end

spawn(CheckPlayerExpulsion)
