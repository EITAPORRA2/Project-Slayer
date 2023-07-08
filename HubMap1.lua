
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

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Universe Hub",
    LoadingTitle = "Loading Universe",
    LoadingSubtitle = "Feito com bumbum",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Universe Hub",
        FileName = "Project Slayer Map 1",
        Rayfield:LoadConfiguration()
    }})

    local AutoBoss = Window:CreateTab("Auto Farm Boss")
    local killauraTab = Window:CreateTab("KillAura")
    local Bypasses = Window:CreateTab("Bypass")
    local Misc = Window:CreateTab("Misc")
    local Teleports1 = Window:CreateTab("Insta TP ")

repeat wait() until game:IsLoaded()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

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
    
    local function SkillBind(bind)
       pcall(function()
           VIM:SendKeyEvent(true,bind,false,game)
           task.wait()
           VIM:SendKeyEvent(false,bind,false,game)
           wait(.2)
       end)
    end
    
    local BossessTable = {"Sabito", "Susamaru", "Zanegutsu Kuuchie", "Yahaba", "Shiron", "Nezuko", "Slasher", "Giyu", "Sanemi"}
    local bosCFTable = {
        ["Susamaru"] = CFrame.new(1415.65686, 315.908813, -4571.56445, 0.546769679, 9.56999102e-08, -0.837283075, -3.89699188e-08, 1, 8.88496885e-08, 0.837283075, -1.59514606e-08, 0.546769679),
        ["Sabito"] = CFrame.new(1257.60046, 275.351685, -2834.26611, -0.999906898, 0, 0.0136531433, 0, 1, 0, -0.0136531433, 0, -0.999906898),
        ["Zanegutsu Kuuchie"] = CFrame.new(-336.3461, 425.857422, -2271.75513, -0.698250651, 1.51218398e-08, 0.715853333, -2.08847464e-08, 1, -4.1495408e-08, -0.715853333, -4.39246115e-08, -0.698250651),
        ["Yahaba"] = CFrame.new(1415.65686, 315.908813, -4571.56445, 0.546769679, 9.56999102e-08, -0.837283075, -3.89699188e-08, 1, 8.88496885e-08, 0.837283075, -1.59514606e-08, 0.546769679),
        ["Shiron"] = CFrame.new(3203.10229, 370.884155, -3953.36035, 0.839348018, 3.06273158e-08, -0.54359442, -9.09106301e-09, 1, 4.23049826e-08, 0.54359442, -3.05667527e-08, 0.839348018),
        ["Nezuko"] = CFrame.new(3549.86816, 342.214478, -4595.73145, 0.869256139, 6.38721716e-08, -0.494362026, -6.77404373e-08, 1, 1.00905426e-08, 0.494362026, 2.47170338e-08, 0.869256139),
        ["Slasher"] =  CFrame.new(4355.59082, 342.214478, -4386.90527, -0.943093359, 9.45450722e-08, -0.332528085, 7.62970487e-08, 1, 6.79336054e-08, 0.332528085, 3.86968253e-08, -0.943093359),
        ["Giyu"] = CFrame.new(3013.30884, 316.95871, -2916.32202, 0.76092875, 3.55993954e-08, 0.648835421, -1.75982926e-08, 1, -3.4228016e-08, -0.648835421, 1.46266848e-08, 0.76092875),
        ["Sanemi"] = CFrame.new(1619.91357, 348.461884, -3717.00464, 0.995524168, -1.20393835e-07, 0.0945073739, 1.19773844e-07, 1, 1.22327712e-08, -0.0945073739, -8.58508931e-10, 0.995524168)
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

Teleports1:CreateButton({
    Name = "Muzan(Old Insta)",
    Callback = function ()
        local Muzan = game:GetService("Workspace").Muzan
local SpawnPosition = Muzan.SpawnPos.Value
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(SpawnPosition) 
    end
})

Teleports1:CreateButton({
        Name = "ButtlerFly Mansion",
        Callback = function ()

local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 40317.308733599995
local ohString3 = "Butterfly Mension"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Kiribating Village",
        Callback = function ()
local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 40622.1543921
local ohString3 = "Kiribating Village"
        end
})

Teleports1:CreateButton({
    Name = "Zapiwara Cave",
      Callback = function ()

local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41236.0080252
local ohString3 = "Zapiwara Cave"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Zapiwara Mountain",
        Callback = function ()

local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41263.3104857
local ohString3 = "Zapiwara Mountain"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Ushumaru Village",
        Callback = function ()
local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41285.6572932
local ohString3 = "Ushumaru Village"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)

        end
})

Teleports1:CreateButton({
        Name = "Waroru Cave",
        Callback = function ()

local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41311.0238902
local ohString3 = "Waroru Cave"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Kabiwaru Village",
        Callback = function ()

local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41333.432399799996
local ohString3 = "Kabiwaru Village"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Abubu Cave",
        Callback = function ()
local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41350.4449346
local ohString3 = "Abubu Cave"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Final Selection",
        Callback = function ()
local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41370.952711599995
local ohString3 = "Final Selection"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Ouwbayashi Home",
        Callback = function ()
local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41388.9518367
local ohString3 = "Ouwbayashi Home"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Dangerous Woods",
        Callback = function ()
local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41411.7517876
local ohString3 = "Dangerous Woods"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Dungeon",
        Callback = function ()
local ohString1 = "Players.LocalPlayer.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
local ohNumber2 = 41432.3210538
local ohString3 = "Dungeon"

game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
        end
})

Teleports1:CreateButton({
        Name = "Meditate(Old Insta)",
        Callback = function ()
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(2814.46948, 317.022034, -3861.58765, 0.414847195, 0, -0.909891069, 0, 1, 0, 0.909891069, 0, 0.414847195)
        end
})

Teleports1:CreateButton({
    Name = "Split Bouder(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(919.366699, 275.050903, -3040.896, 0.991291702, 0, 0.131684288, 0, 1, 0, -0.131684288, 0, 0.991291702)
    end
})

Teleports1:CreateButton({
    Name = "Water Trainer(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(705.209229, 261.426819, -2409.51587, -0.566798735, -5.48522401e-08, -0.641887605, -7.38932258e-08, 1, 2.8182352e-09, 0.641887605, 4.95921633e-08, -0.566798735)
    end
})
Teleports1:CreateButton({
    Name = "Insect Trainer(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(2873.81177, 316.95871, -3917.9397, 0.40715313, 4.81208531e-08, 0.91335988, -8.85969982e-08, 1, -1.31911939e-08, -0.91335988, -7.55501048e-08, 0.40715313)
    end
})
Teleports1:CreateButton({
    Name = "Thunder Trainer(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(-322.369507, 426.857788, -2384.4021, 0.361198723, -4.49157973e-08, -0.932488859, 1.14233451e-07, 1, -3.91942434e-09, 0.932488859, -1.05105727e-07, 0.361198723)
    end
})

Teleports1:CreateButton({
    Name = "Wind Trainer(Old Insta)",
    Callback = function ()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(1792.31458, 334.338989, -3521.31104, 0.862527311, -5.19402583e-08, -0.506010473, 8.30083167e-08, 1, 3.88463874e-08, 0.506010473, -7.55091492e-08, 0.862527311)
    end
})



Teleports1:CreateButton({
    Name = "BackRooms(Old Insta)",
    Callback = function ()
        local player = game.Players.LocalPlayer
if player then
    player.Character.HumanoidRootPart.CFrame = CFrame.new(0, getgenv().Distance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
end
    end
})

Teleports1:CreateButton({
    Name = "TP Muzan",
    Callback = function ()
        local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    local Character = Player.Character
    local HumanoidRootPart = Character.HumanoidRootPart
    
    local Muzan = game:GetService("Workspace").Muzan
    
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
    
    ImprovedTeleport(Muzan.SpawnPos.Value)
    end
})



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

Misc:CreateButton({
    Name = "Horse Guy (10 Sec)",
    Callback = function()
local ohString1 = "horseguy_txt"
local ohString2 = "Horse guy"

game:GetService("Players").LocalPlayer.PlayerGui.Npc_Dialogue.Do_Text:Fire(ohString1, ohString2)

wait(10)

game:GetService("Players").LocalPlayer.PlayerGui.Npc_Dialogue.Cancel:Fire()

wait(0.5)

game:GetService("Players").LocalPlayer.PlayerGui.Stop_talking_to_npc:Fire()

wait(0.5)

game:GetService("Players").LocalPlayer.PlayerGui.Npc_Dialogue.Canceld:Fire()
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


Misc:CreateToggle({
    Name = "AutoCollect",
    Flag = "AutoCollect",
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

spawn(function()
    while task.wait() do
        if getgenv().AutoEatSouls then
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

Misc:CreateToggle({
    Name = "Auto Eat Soul",
    Flag = "AutoEatSoul",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().AutoEatSouls = Value
    end
})

Misc:CreateToggle({
    Name = "Inf Stamina",
    Flag = "Inf Stamina",
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
    Flag = "Inf Breathing",
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
    Flag = "NoCoolDown(DONT SPAM!!)",
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
      else
         game:GetService("RunService"):Set3dRenderingEnabled(true)
       end
    end,
 })

local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
local performanceBackup = {}  -- Tabela para armazenar as configurações de backup do modo de desempenho

-- Função para ativar o modo de desempenho
local function EnablePerformanceMode()
    performanceBackup.WaterWaveSize = t.WaterWaveSize
    performanceBackup.WaterWaveSpeed = t.WaterWaveSpeed
    performanceBackup.WaterReflectance = t.WaterReflectance
    performanceBackup.WaterTransparency = t.WaterTransparency
    performanceBackup.GlobalShadows = l.GlobalShadows
    performanceBackup.FogEnd = l.FogEnd
    performanceBackup.Brightness = l.Brightness
    performanceBackup.QualityLevel = settings().Rendering.QualityLevel

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
            performanceBackup[v] = {
                Material = v.Material,
                Reflectance = v.Reflectance
            }
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            performanceBackup[v] = {
                Transparency = v.Transparency
            }
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            performanceBackup[v] = {
                Lifetime = v.Lifetime
            }
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            performanceBackup[v] = {
                BlastPressure = v.BlastPressure,
                BlastRadius = v.BlastRadius
            }
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
            performanceBackup[v] = {
                Enabled = v.Enabled
            }
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            performanceBackup[v] = {
                Material = v.Material,
                Reflectance = v.Reflectance,
                TextureID = v.TextureID
            }
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end

    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            performanceBackup[e] = {
                Enabled = e.Enabled
            }
            e.Enabled = false
        end
    end
end

-- Função para desativar o modo de desempenho
local function DisablePerformanceMode()
    t.WaterWaveSize = performanceBackup.WaterWaveSize
    t.WaterWaveSpeed = performanceBackup.WaterWaveSpeed
    t.WaterReflectance = performanceBackup.WaterReflectance
    t.WaterTransparency = performanceBackup.WaterTransparency
    l.GlobalShadows = performanceBackup.GlobalShadows
    l.FogEnd = performanceBackup.FogEnd
    l.Brightness = performanceBackup.Brightness
    settings().Rendering.QualityLevel = performanceBackup.QualityLevel

    for object, backup in pairs(performanceBackup) do
        if typeof(object) == "Instance" then
            if object:IsA("Part") or object:IsA("Union") or object:IsA("CornerWedgePart") or object:IsA("TrussPart") then
                object.Material = backup.Material
                object.Reflectance = backup.Reflectance
            elseif object:IsA("Decal") or object:IsA("Texture") then
                object.Transparency = backup.Transparency
            elseif object:IsA("ParticleEmitter") or object:IsA("Trail") then
                object.Lifetime = backup.Lifetime
            elseif object:IsA("Explosion") then
                object.BlastPressure = backup.BlastPressure
                object.BlastRadius = backup.BlastRadius
            elseif object:IsA("Fire") or object:IsA("SpotLight") or object:IsA("Smoke") then
                object.Enabled = backup.Enabled
            elseif object:IsA("MeshPart") then
                object.Material = backup.Material
                object.Reflectance = backup.Reflectance
                object.TextureID = backup.TextureID
            elseif object:IsA("BlurEffect") or object:IsA("SunRaysEffect") or object:IsA("ColorCorrectionEffect") or object:IsA("BloomEffect") or object:IsA("DepthOfFieldEffect") then
                object.Enabled = backup.Enabled
            end
        end
    end

    performanceBackup = {}
end

-- Função de retorno de chamada para o toggle "Texture Remove"
local function ToggleTextureRemove(value)
    if value then
        EnablePerformanceMode()  -- Ativar o modo de desempenho
    else
        DisablePerformanceMode()  -- Desativar o modo de desempenho
    end
end

local Toggle = Misc:CreateToggle({
    Name = "Texture Remove",
    CurrentValue = false,
    Callback = ToggleTextureRemove,
})

local mapFolder = game:GetService("Workspace"):FindFirstChild("Map")
local backup = {}  -- Cria uma tabela vazia para armazenar a cópia de backup dos objetos
local isDeleting = false  -- Variável de controle para rastrear se a parte do mapa está sendo excluída

local function ToggleMapObjects(state)
    if state then
        if not isDeleting then
            isDeleting = true 
            
            while isDeleting do
                for _, child in ipairs(mapFolder:GetChildren()) do
                    backup[child] = child:Clone()
                    child:Destroy()
                end
                
                wait(5)
                
                for object, clone in pairs(backup) do
                    clone.Parent = mapFolder
                end
                backup = {} 
            end
        end
    else
        isDeleting = false 
    end
end

local Toggle = Misc:CreateToggle({
    Name = "Map Remover",
    CurrentValue = false,
    Callback = function(value)
        ToggleMapObjects(value)
    end,
})

if not mapFolder then
    warn("A pasta 'Map' não foi encontrada.")
end

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
    Name = "Wagon God",
    Callback = function()
        wait(0.2)

        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = CFrame.new(222.136902, 281.832642, -1606.17798)

        wait(0.8)

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
   Name = "Invencible(Scythe)",
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
   Name = "Invencible(Water)",
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
    Flag = "Inf Breath Regen",
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
    Flag = "WarFans Buff",
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
    Flag = "GodSpeed (Human)",
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

            local LP = game:GetService("Players").LocalPlayer
            local runLoop = false
            
            local function invokeServer(ohString1, ohInstance2, ohCFrame3, ohInstance4, ohNumber5, ohNumber6)
                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(ohString1, ohInstance2, ohCFrame3, ohInstance4, ohNumber5, ohNumber6)
            end

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

local toggle = false

local function findMob1()
    local largest = math.huge
    local closestChild = nil
    local hrp = character:WaitForChild("HumanoidRootPart")
    for i, v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
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

local function attackLoop()
    while toggle do
        local success, error = pcall(function()
            local ohString1 = "piercing_arrow_damage"
            local ohInstance2 = game:GetService("Players").LocalPlayer
            local closestMob = findMob1()

            if closestMob then
                local ohCFrame3 = closestMob.HumanoidRootPart.CFrame
                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohInstance2, ohCFrame3)
            else
                print("Nenhum mob encontrado.")
            end
        end)

        if not success then
        end
        wait(0.5)
    end
end

local Toggle = Bypasses:CreateToggle({
    Name = "Bring Mob Arrow (All)",
    CurrentValue = false,
    Callback = function(value)
        toggle = value
        if toggle then
            attackLoop() -- Inicia o loop
        end
    end,
})

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

killauraTab:CreateToggle({
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
