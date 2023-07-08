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

local function GetHuman()
   local h = LP.Character
   h = h and (h:FindFirstChild("Humanoid") or h:FindFirstChildWhichIsA("Humanoid"))
   return h or workspace.CurrentCamera.CameraSubject
end

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

function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
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
spawn(function()
   while wait() do
       pcall(function()
           SkillActive = AutoUseSkills and (FarmBoss and NearestMobs) or AutoUseSkills and (FarmQuest and NearestMobs) or AutoUseSkills and (FarmMob and NearestMobs) or AutoUseSkills and (AllBosses and NearestMobs)
           if FarmMethod == "Above" then
               FarmModes = CFrame.new(0,getgenv().Distance,0) * CFrame.Angles(math.rad(-90),0,0) 
           elseif FarmMethod == "Below" then
               FarmModes = CFrame.new(0,-getgenv().Distance,0) * CFrame.Angles(math.rad(90),0,0)
           elseif FarmMethod == "Behind" then
               FarmModes = CFrame.new(0,0,getgenv().Distance)
           end
           for i,v in pairs(LP.PlayerGui.MainGuis.Items.Scroll:GetChildren()) do
               Insert = true
               if v.ClassName == "Frame" and v.Name ~= "Health Elixir" and v.Name ~= "Health Regen Elixir" and v.Name ~= "Stamina Elixir" and v.Name ~= "Bandage" then
                   for i,v2 in pairs(invTable) do if v2 == v.Name then Insert = false end end
                   if Insert == true then table.insert(invTable, v.Name) end
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

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/ImperorLegend/Linoriax/main/test'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Universe Hub MAP 2',
    Center = true,
    AutoShow = true,
})

local Tabs = {
   Main = Window:AddTab('Project Slayers'),
   Misc = Window:AddTab('Misc'),
   Teleports = Window:AddTab('Teleports'),
   ['Settings'] = Window:AddTab('Settings'),

}

local Test = Tabs.Misc:AddLeftGroupbox('Misc')
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Main')
local RightGroupBox = Tabs.Main:AddRightGroupbox('Race')
local LeftGroupBox2 = Tabs.Main:AddLeftGroupbox('Farm')
local LeftGroupBox5 = Tabs.Main:AddLeftGroupbox('Gourd')
local RightGroupBox3 = Tabs.Main:AddRightGroupbox('Auto Skills')
local RightGroupBox4 = Tabs.Main:AddRightGroupbox('Misc')
local Test2 = Tabs.Misc:AddLeftGroupbox('Training')
local Test3 = Tabs.Misc:AddLeftGroupbox('Modes')
local Test4 = Tabs.Misc:AddRightGroupbox('God Modes (Oni)')
local Test5 = Tabs.Misc:AddRightGroupbox('God Modes (Human)')
local Universe1 = Tabs.Teleports:AddLeftGroupbox('TELEPORTS')

LeftGroupBox2:AddToggle('KA OP', {
    Text = 'KillAura Sword',
    Default = false,
    Callback = function(bool)
        getgenv().killaura = bool -- Atualiza o valor do killaura

        if bool then
            getgenv().method = "Sword_Combat_Slash"

            local ReplStorage = game:GetService("ReplicatedStorage")
            local Players = game:GetService("Players")
            local client = game:GetService("Players").LocalPlayer

            while getgenv().killaura do
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
                wait(1.7)
            end
        end
    end
})

LeftGroupBox2:AddToggle('KA OP', {
    Text = 'KillAura Fist',
    Default = false,
    Callback = function(bool)
        getgenv().killaura = bool -- Atualiza o valor do killaura

        if bool then
            getgenv().method = "fist_combat"

            local ReplStorage = game:GetService("ReplicatedStorage")
            local Players = game:GetService("Players")
            local client = game:GetService("Players").LocalPlayer

            while getgenv().killaura do
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
                wait(1.7)
            end
        end
    end
})

LeftGroupBox2:AddToggle('KA OP', {
    Text = 'KillAura Scythe',
    Default = false,
    Callback = function(bool)
        getgenv().killaura = bool -- Atualiza o valor do killaura

        if bool then
            getgenv().method = "Scythe_Combat_Slash"

            local ReplStorage = game:GetService("ReplicatedStorage")
            local Players = game:GetService("Players")
            local client = game:GetService("Players").LocalPlayer

            while getgenv().killaura do
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
                wait(1.7)
            end
        end
    end
})

LeftGroupBox2:AddToggle('KA OP', {
    Text = 'KillAura Fans',
    Default = false,
    Callback = function(bool)
        getgenv().killaura = bool -- Atualiza o valor do killaura

        if bool then
            getgenv().method = "fans_combat_slash"

            local ReplStorage = game:GetService("ReplicatedStorage")
            local Players = game:GetService("Players")
            local client = game:GetService("Players").LocalPlayer

            while getgenv().killaura do
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
                wait(1.7)
            end
        end
    end
})

LeftGroupBox2:AddToggle('KA OP', {
    Text = 'KillAura Claw',
    Default = false,
    Callback = function(bool)
        getgenv().killaura = bool -- Atualiza o valor do killaura

        if bool then
            getgenv().method = "claw_Combat_Slash"

            local ReplStorage = game:GetService("ReplicatedStorage")
            local Players = game:GetService("Players")
            local client = game:GetService("Players").LocalPlayer

            while getgenv().killaura do
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
                wait(1.7)
            end
        end
    end
})

 getgenv().FarmMethod = "Above"
 LeftGroupBox:AddDropdown('FarmMethod', {
    Values = { 'Above', 'Below', 'Behind'},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected
    Text = 'Farm Method',
    Callback = function(self)
		getgenv().FarmMethod = self
    end
 })

 getgenv().TweenSpeed = 400
 LeftGroupBox:AddSlider('MySlider', {
    Text = 'Tween Speed',
    Default = 400,
    Min = 10,
    Max = 500,
    Rounding = 25,
    Compact = false,
    Callback = function(self)
		getgenv().TweenSpeed = self
    end
})

getgenv().Distance = 8
LeftGroupBox:AddSlider('MySlider2', {
    Text = 'Farm Distance',
    Default = 8,
    Min = 1,
    Max = 10,
    Rounding = 1,
    Compact = false,
    Callback = function(self)
		getgenv().Distance = self
    end
})

LeftGroupBox:AddToggle('FarmBosses', {
    Text = 'Auto Boss',
    Default = false, -- Default value (true / false)
    Callback = function(value)
        getgenv().AllBosses = value
    end
})

LeftGroupBox:AddDivider()

local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local mouseEnabled = true

local function DisableMouseClicks()
    mouseEnabled = false
    ContextActionService:BindAction("DisableMouseClicks", function() end, false, Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2)
end

local function EnableMouseClicks()
    mouseEnabled = true
    ContextActionService:UnbindAction("DisableMouseClicks")
end

RightGroupBox4:AddToggle('Ignore', {
    Text = 'Stop Mouse Click',
    Default = false, -- Default value (true / false)
    Callback = function(value)
        if value then
            DisableMouseClicks()
        else
            EnableMouseClicks()
        end
    end
})

UserInputService.InputBegan:Connect(function(input)
    if not mouseEnabled and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2) then
        return
    end
end)

local firing = false -- Variable to track the state

RightGroupBox4:AddToggle('BypassGKA', {
    Text = 'Arrow Bypass',
    Default = false,
    Callback = function(state)
        firing = state -- Update the firing state

        if firing then -- Start the loop only if firing is true
            while firing do -- Loop while firing is true
                local Handle_Initiate_S_ = game.ReplicatedStorage.Remotes.To_Server.Handle_Initiate_S_
                Handle_Initiate_S_:InvokeServer("skil_ting_asd", game.Players.LocalPlayer, "arrow_knock_back", 5)
                wait(6)
            end
        end
    end
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

LeftGroupBox2:AddToggle('GKAarroWW', {
    Text = 'Arrow Aura',
    Default = false,
    Callback = function(value)
        toggle = value
        if toggle then
            attackLoop() -- Inicia o loop
        end
    end
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

LeftGroupBox2:AddToggle('GKAarroWW', {
    Text = 'Bring Aura(All)',
    Default = false,
    Callback = function(value)
        toggle = value
        if toggle then
            attackLoop() -- Inicia o loop
        end
    end
})

RightGroupBox4:AddToggle('AutoCollectChestv1', {
    Text = 'Auto Collect Chest',
    Default = false, -- Default value (true / false)
    Callback = function(value)
      getgenv().AutoCollectChest = value
    end
})

spawn(function()
    while task.wait() do
        if getgenv().AutoBlock then
            local args = {
                [1] = "add_blocking",
                [3] = 11565.6265117,
                [4] = game:GetService("ReplicatedStorage").PlayerValues[game.Players.LocalPlayer.Name],
                [5] = math.huge
            }
            game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
        end
    end
end)

RightGroupBox4:AddToggle('AutoBlock', {
    Text = 'INF Block',
    Default = false,
    Callback = function(value)
        if value then
            getgenv().AutoBlock = true
        else
            getgenv().AutoBlock = false
            local args = {
                [1] = "remove_blocking",
                [2] = game:GetService("ReplicatedStorage"):WaitForChild("PlayerValues"):WaitForChild(game.Players.LocalPlayer.Name)
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S_"):InvokeServer(unpack(args))
        end
    end
})



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

local function toggleScript(value)
    toggleEnabled = value
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

RightGroupBox4:AddToggle('RGB', {
    Text = 'RGB Skin',
    Default = false,
    Callback = toggleScript,
})

RightGroupBox4:AddToggle('AutoEatSouls', {
   Text = 'Eat Souls ',
   Default = false, -- Default value (true / false)
   Callback = function(value)
      getgenv().AutoEatSouls = value
   end
})

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

RightGroupBox4:AddToggle('Auto Clash', {
    Text = 'Auto Clash',
    Default = false,
    Callback = function(Value)
        clash = Value
        if clash then
            instanced()
        end
    end
})

local shouldTeleport = false

local Toggle = RightGroupBox4:AddToggle('Rejoin', {
    Text = 'Auto Rejoin',
    Default = false,
    Callback = function(Value)
        shouldTeleport = Value
    end
})

repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')

local lp, po, ts = game:GetService('Players').LocalPlayer, game.CoreGui.RobloxPromptGui.promptOverlay, game:GetService('TeleportService')

po.ChildAdded:Connect(function(a)
    if a.Name == 'ErrorPrompt' then
        repeat
            if shouldTeleport then
                ts:Teleport(5956785391)
                wait(2)
            else
                break
            end
        until false
    end
end)

RightGroupBox4:AddButton({
    Text = 'Gamepass Unlocker',
    Func = function()
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
    end,
    DoubleClick = false,
})

LeftGroupBox5:AddToggle('ToggleGourd', {
   Text = 'Auto Gourd',
   Default = false, -- Default value (true / false)
   Callback = function(v)
       getgenv().AutoBlowGourd = v
   end
})

getgenv().GourdSelect = "Small Gourd"
LeftGroupBox5:AddDropdown('Gourd', {
   Values = { 'Small Gourd', 'Medium Gourd', 'Big Gourd' },
   Default = 1, -- number index of the value / string
   Multi = false, -- true / false, allows multiple choices to be selected
   Text = 'Auto Gourd',
   Callback = function(v)
       getgenv().GourdSelect = v
   end
})

task.spawn(function()
   while true do
       if getgenv().AutoBlowGourd then
           local Players = game:GetService("Players")
           local ReplicatedStorage = game:GetService("ReplicatedStorage")

           local function invokeServer(...)
               return ReplicatedStorage.Remotes.To_Server.Handle_Initiate_S_:InvokeServer(...)
           end

           local LocalPlayer = Players.LocalPlayer
           local Data = ReplicatedStorage.Player_Data[LocalPlayer.Name]

           if getgenv().GourdSelect == "Big Gourd" and Data.Yen.Value >= 700 then
               invokeServer("buysomething", LocalPlayer.Name, "Big Gourd", Data.Yen, Data.Inventory)
               wait(0.5)
               invokeServer("change_equip_for_item", LocalPlayer.Name, Data.Inventory, Data.Inventory.Items:FindFirstChild("Big Gourd"))
               wait(0.5)
               for _, v in pairs(LocalPlayer.Backpack:GetChildren()) do
                   if v.Name == "Big Gourd" then
                       v.Parent = LocalPlayer.Character
                   end
               end
               wait(0.0001)

               while true do
                   local BigGourd = LocalPlayer.Character:FindFirstChild("Big Gourd")
                   if BigGourd then
                       invokeServer("blow_in_gourd_thing", LocalPlayer, BigGourd, 1)
                   else
                       break
                   end
                   wait()
               end
           elseif getgenv().GourdSelect == "Medium Gourd" and Data.Yen.Value >= 450 then
               invokeServer("buysomething", LocalPlayer.Name, "Medium Gourd", Data.Yen, Data.Inventory)
               wait(0.5)
               invokeServer("change_equip_for_item", LocalPlayer.Name, Data.Inventory, Data.Inventory.Items:FindFirstChild("Medium Gourd"))
               wait(0.5)
               for _, v in pairs(LocalPlayer.Backpack:GetChildren()) do
                   if v.Name == "Medium Gourd" then
                       v.Parent = LocalPlayer.Character
                   end
               end
               wait(0.0001)

               while true do
                   local MediumGourd = LocalPlayer.Character:FindFirstChild("Medium Gourd")
                   if MediumGourd then
                       invokeServer("blow_in_gourd_thing", LocalPlayer, MediumGourd, 1)
                   else
                       break
                   end
                   wait()
               end
           elseif getgenv().GourdSelect == "Small Gourd" and Data.Yen.Value >= 200 then
               invokeServer("buysomething", LocalPlayer.Name, "Small Gourd", Data.Yen, Data.Inventory)
               wait(0.5)
               invokeServer("change_equip_for_item", LocalPlayer.Name, Data.Inventory, Data.Inventory.Items:FindFirstChild("Small Gourd"))
               wait(0.5)
               for _, v in pairs(LocalPlayer.Backpack:GetChildren()) do
                   if v.Name == "Small Gourd" then
                       v.Parent = LocalPlayer.Character
                   end
               end
        wait(0.5)
               while true do
                   local SmallGourd = LocalPlayer.Character:FindFirstChild("Small Gourd")
                   if SmallGourd then
                       invokeServer("blow_in_gourd_thing", LocalPlayer, SmallGourd, 1)
                   else
                       break
                   end
                   wait(0.0001)
               end
           end
       end
        wait(0.0001)
   end
end)



local playerName = game.Players.LocalPlayer.Name
local RightGroupBox = RightGroupBox

RightGroupBox:AddDropdown('SelectRace', {
    Values = { 'Human', 'Slayer', 'Demon', 'Hybrid'},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected
    Text = 'Select Race',
    Callback = function(v)
        local localplayer = game:GetService("Players").LocalPlayer
        local raceValue
        if v == 'Human' then
            raceValue = 1
        elseif v == 'Slayer' then
            raceValue = 2
        elseif v == 'Demon' then
            raceValue = 3
        else
            raceValue = 4 -- or any value for Hybrid race
        end
        game:GetService("ReplicatedStorage").Player_Data[localplayer.Name].Race.Value = raceValue
    end
})

RightGroupBox3:AddToggle('AutoSkill', {
   Text = 'Auto Skill',
   Default = false, -- Default value (true / false)
   Callback = function(t)
         getgenv().AutoUseSkills = t
   end
})

RightGroupBox3:AddToggle('Z Move', {
   Text = 'Z',
   Default = false, -- Default value (true / false)
   Callback = function(t)
         getgenv().ZMove = t
   end
})

RightGroupBox3:AddToggle('X Move', {
   Text = 'X',
   Default = false, -- Default value (true / false)
   Callback = function(t)
         getgenv().XMove = t
   end
})

RightGroupBox3:AddToggle('C Move', {
   Text = 'C',
   Default = false, -- Default value (true / false)
   Callback = function(t)
         getgenv().CMove = t
   end
})

RightGroupBox3:AddToggle('V Move', {
   Text = 'V',
   Default = false, -- Default value (true / false)
   Callback = function(t)
         getgenv().VMove = t
   end
})

RightGroupBox3:AddToggle('B Move', {
   Text = 'B',
   Default = false, -- Default value (true / false)
   Callback = function(t)
         getgenv().BMove = t
   end
})

RightGroupBox3:AddToggle('N Move', {
   Text = 'N',
   Default = false, -- Default value (true / false)
   Callback = function(t)
         getgenv().NMove = t
   end
})

-- // AUTO USE SKILLS - SKILLS
	
spawn(function()
   while task.wait() do
      pcall(function()
         if SkillActive then
            if AutoUseSkills and getgenv().ZMove and not UsingSkill then
               for i = 1,7 do
                  UsingSkill = true
                  SkillBind("Z")
               end              
               UsingSkill = false
            end
         end
      end)
   end
end)


spawn(function()
   while task.wait() do
      pcall(function()
         if SkillActive then
            if AutoUseSkills and getgenv().XMove and not UsingSkill then
               for i = 1,7 do
                  UsingSkill = true
                  SkillBind("X")
               end              
               UsingSkill = false
            end
         end
      end)
   end
end)

spawn(function()
   while task.wait() do
      pcall(function()
         if SkillActive then
            if AutoUseSkills and getgenv().CMove and not UsingSkill then
               for i = 1,7 do
                  UsingSkill = true
                  SkillBind("C")
               end              
               UsingSkill = false
            end
         end
      end)
   end
end)

spawn(function()
   while task.wait() do
      pcall(function()
         if SkillActive then
            if AutoUseSkills and getgenv().VMove and not UsingSkill then
               for i = 1,7 do
                  UsingSkill = true
                  SkillBind("V")
               end              
               UsingSkill = false
            end
         end
      end)
   end
end)

spawn(function()
   while task.wait() do
      pcall(function()
         if SkillActive then
            if AutoUseSkills and getgenv().BMove and not UsingSkill then
               for i = 1,7 do
                  UsingSkill = true
                  SkillBind("B")
               end              
               UsingSkill = false
            end
         end
      end)
   end
end)

spawn(function()
   while task.wait() do
      pcall(function()
         if SkillActive then
            if AutoUseSkills and getgenv().NMove and not UsingSkill then
               for i = 1,7 do
                  UsingSkill = true
                  SkillBind("N")
               end              
               UsingSkill = false
            end
         end
      end)
   end
end)

Test:AddToggle('InfStamina', {
   Text = 'Infinite Stamina',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         getgenv().infstuff = true
         while getgenv().infstuff do
            task.wait()
            getrenv()._G:Stamina(-100)
         end
      else
         getgenv().infstuff = false
      end
   end
})

Test:AddToggle('InfBreathing', {
   Text = 'Infinite Breathing',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         getgenv().infstuff = true
         while getgenv().infstuff do
            task.wait()
            getrenv()._G:Breath(-100)
         end
      else
         getgenv().infstuff = false
      end
   end
})

-- // NO DROWN - MISCELLANEOUS

task.spawn(function()
   for i,v in next, getgc(true) do
      if type(v) == "table" and rawget(v, "swim_bar") then
         while task.wait() do
            if getgenv().NoDrown then
               rawset(v, "swim_bar", {
                  [1] = 2,
                  [2] = 2
               })
            end
         end
      end
   end
end)

Test:AddToggle('No Drown', {
   Text = 'No Drown',
   Default = false, -- Default value (true / false)
   Callback = function(t)
      getgenv().NoDrown = t
   end
})

local oldindex
Test:AddToggle('NoCD', {
   Text = 'No Cooldown (DONT SPAM!!!)',
   Default = false,
   Callback = function(state)
      if state then
         getgenv().NoCdMoves = true
         oldindex = hookmetamethod(game, "__index", function(index, value)
            if tostring(index) == "LastUsed" and getgenv().NoCdMoves then
               return 0
            end
            return oldindex(index, value)
         end)
      else
         getgenv().NoCdMoves = false
         hookmetamethod(game, "__index", oldindex)
      end
   end
})

Test:AddToggle('NoSunDMG', {
   Text = 'No Sun Burn',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = true
      else
         game:GetService("Players").LocalPlayer.PlayerScripts["Small_Scripts"].Gameplay["Sun_Damage"].Disabled = false
      end
   end
})

Test:AddToggle('WhiteScreen', {
   Text = 'White Screen (FPS)',
   Default = false,
   Callback = function(state)
      if state then
         game:GetService("RunService"):Set3dRenderingEnabled(false)
      else
         game:GetService("RunService"):Set3dRenderingEnabled(true)
      end
   end
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

-- Adiciona o toggle para ativar/desativar o modo de desempenho
Test:AddToggle('PerformanceMode', {
    Text = 'Performance Mode',
    Default = false,
    Callback = function(state)
        if state then
            EnablePerformanceMode()
        else
            DisablePerformanceMode()
        end
    end
})


local mapFolder = game:GetService("Workspace"):FindFirstChild("Map")
local backup = {}  -- Cria uma tabela vazia para armazenar a cópia de backup dos objetos
local isDeleting = false  -- Variável de controle para rastrear se a parte do mapa está sendo excluída

if mapFolder then
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
        Test:AddToggle('WhiteScreen', {
        Text = 'Map Delete',
        Default = false,
        Callback = function(state)
            ToggleMapObjects(state)
        end
    })
else
    warn("A pasta 'Map' não foi encontrada.")
end

Test2:AddToggle('AutoSplitBoulder', {
   Text = 'Auto Split',
   Default = false,
   Callback = function(t)
      getgenv().AutoSplitBoulder = t
   end
})

Test2:AddToggle('AutoPushUps', {
   Text = 'Auto PushUp',
   Default = false,
   Callback = function(t)
      getgenv().AutoPushUps = t
   end
})

Test2:AddToggle('AutoMeditate', {
   Text = 'Auto Meditate',
   Default = false,
   Callback = function(t)
      getgenv().AutoMeditate = t
   end
})

Test2:AddToggle('AutoCupGame', {
   Text = 'Auto CupGame',
   Default = false,
   Callback = function(t)
      getgenv().AutoCupGame = t
   end
})

Test2:AddToggle('AutoTarget', {
   Text = 'Auto Target',
   Default = false,
   Callback = function(t)
      getgenv().AutoTarget = t
   end
})

-- // AUTO SPLIT BOULDER - TRAININGS

spawn(function()
   while task.wait() do
       if getgenv().AutoSplitBoulder then
           pcall(function()
               game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["boulder_split_ui"].Holder.LocalScript.Value.Value = 10000
           end)
       end
   end
  end)

-- // AUTO MEDITATE - TRAININGS

  spawn(function()
   while task.wait() do
       if getgenv().AutoMeditate then
           pcall(function()
               game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["Meditate_gui"].Holder.LocalScript.Value.Value = 100
           end)
       end
   end
  end)

-- // AUTO PUSH UPS - TRAININGS

  spawn(function()
   while task.wait() do
       if getgenv().AutoPushUps then
           pcall(function()
               game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["Push_Up_Gui"].Holder.push_up_mat_local_script.Value.Value = 1000
           end)
       end
   end
  end)

-- // AUTO CUP GAME - TRAININGS

  spawn(function()
   while task.wait() do
       if getgenv().AutoCupGame then
           pcall(function()
               game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["cup_game_gui"].Holder.cup_game_script123.Value.Value = 1000
           end)
       end
   end
  end)

-- // AUTO TARGET - TRAININGS	

  spawn(function()
   while task.wait() do
       if getgenv().AutoTarget then
           pcall(function()
               game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["chairui"].Holder.LocalScript.Value.Value = 1000
           end)
       end
   end
  end)

Test5:AddButton({
    Text = 'Wagon God (Activator)',
    Func = function()
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
        end    end,
    DoubleClick = false,
})

  Test5:AddToggle('SemiGodMode', {
   Text = 'Kamado God (Kamado)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
       if state then
           game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(true)
       else
           game:GetService("ReplicatedStorage").Remotes.heal_tang123asd:FireServer(false)
       end
   end
})

Test5:AddToggle('SemiGodMode2', {
   Text = 'INF BreathRegen (Any)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
       if state then
           game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(true)
       else
           game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(false)
       end
   end
})

Test5:AddToggle('WarDrumsMode', {
   Text = 'WarFans Buff (Any)',
   Default = false, -- Default value (true / false)
   Callback = function(Value)
      getgenv().infWD = Value
		while getgenv().infWD do 
		local args = {
    	[1] = true
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("war_Drums_remote"):FireServer(unpack(args))
		wait(20.1)
      end
   end
})

Test3:AddToggle('Chatlogs', {
    Text = 'Enable Chat',
    Default = false, -- Default value (true / false)
    Callback = function(state)
        if state then
             game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChannelsBarParentFrame.Visible = true
             game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Visible = true
             game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
 
        else
             game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChannelsBarParentFrame.Visible = false
             game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Visible = false
             game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
        end
    end
 })

 Test3:AddButton("Remove Damage Log", function()
    local playerGui = game:GetService("Players").LocalPlayer.PlayerGui
    if playerGui:FindFirstChild("Pop_Ups") then
        local bossHp = playerGui.Pop_Ups:FindFirstChild("Bosshp")
        if bossHp then
            local damageLog = bossHp:FindFirstChild("Damage_Log")
            if damageLog then
                damageLog:Destroy()
            end
        end
    end
 end)

 
Test3:AddButton("NPC No Block", function()
    game.Workspace.Mobs.DescendantAdded:Connect(function(c)
        if c.Name == "Blocking" then 
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer("remove_blocking", c.Parent)
        end
    end)
end)


Test3:AddButton("Reset", function()
    local args = {
        [1] = "Add_Knockedout"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
    wait()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
    wait()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("water_damage"):FireServer()
end)


Test4:AddToggle('ShockGM', {
   Text = 'Invencible (ShockWave)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.godmode = true
   while _G.godmode do
   local args = {
      [1] = "skil_ting_asd",
      [2] = game:GetService("Players").LocalPlayer,
      [3] = "akaza_bda_compass_needle",
      [4] = 1
   }
   
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
   wait(0.1)
   end
      else
         _G.godmode = false
         while _G.godmode do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "akaza_bda_compass_needle",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.1)
         end
      end
   end    
})

Test4:AddToggle('DreamGM', {
   Text = 'Invencible (Dream)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.DREAMgodmode = true
   while _G.DREAMgodmode do
   local args = {
      [1] = "skil_ting_asd",
      [2] = game:GetService("Players").LocalPlayer,
      [3] = "dream_bda_flesh_monster",
      [4] = 1
   }
   
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
   wait(0.1)
   end
      else
         _G.DREAMgodmode = false
         while _G.DREAMgodmode do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "dream_bda_flesh_monster",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.1)
         end
      end
   end    
})

Test4:AddToggle('SwampGM', {
   Text = 'Invencible (Swampy)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.SWAMPgodmode = true
   while _G.SWAMPgodmode do
   local args = {
      [1] = "skil_ting_asd",
      [2] = game:GetService("Players").LocalPlayer,
      [3] = "swamp_bda_swamp_domain",
      [4] = 1
   }
   
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
   wait(0.1)
   end
      else
         _G.SWAMPgodmode = false
         while _G.SWAMPgodmode do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "swamp_bda_swamp_domain",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.1)
         end
      end
   end    
})

Test4:AddToggle('IceGM', {
   Text = 'Invencible (Ice)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.ICEgodmode = true
   while _G.ICEgodmode do
   local args = {
      [1] = "skil_ting_asd",
      [2] = game:GetService("Players").LocalPlayer,
      [3] = "ice_demon_art_bodhisatva",
      [4] = 1
   }
   
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
   wait(0.1)
   end
      else
         _G.ICEgodmode = false
         while _G.ICEgodmode do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "ice_demon_art_bodhisatva",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.1)
         end
      end
   end    
})

Test4:AddToggle('BloodGM', {
   Text = 'Invencible (Blood)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.BloodGM = true
   while _G.BloodGM do
   local args = {
      [1] = "skil_ting_asd",
      [2] = game:GetService("Players").LocalPlayer,
      [3] = "explosive_demon_art_blood_burst",
      [4] = 1
   }
   
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
   wait(0.1)
   end
      else
         _G.BloodGM = false
         while _G.BloodGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "explosive_demon_art_blood_burst",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.1)
         end
      end
   end    
})

Test5:AddToggle('UniGodMode', {
    Text = 'Invencible (Scythe)',
    Default = false, -- Default value (true / false)
    Callback = function(state)
       if state then
          _G.godmode2 = true
    while _G.godmode2 do
    local args = {
       [1] = "skil_ting_asd",
       [2] = game:GetService("Players").LocalPlayer,
       [3] = "scythe_asteroid_reap",
       [4] = 1
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
    wait(0.1)
    end
       else
          _G.godmode2 = false
          while _G.godmode2 do
          local args = {
             [1] = "skil_ting_asd",
             [2] = game:GetService("Players").LocalPlayer,
             [3] = "scythe_asteroid_reap",
             [4] = 1
          }
          
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
          wait(0.1)
          end
       end
    end    
 })
 
Test5:AddToggle('SoundGM', {
   Text = 'Invencible (Sound)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.SoundGM = true
         while _G.SoundGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "sound_breathing_smoke_screen",
            [4] = 1
          }
   
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
      wait(0.1)
         end
      else
         _G.SoundGM = false
         while _G.SoundGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "sound_breathing_smoke_screen",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(1)
         end
      end
   end    
})
Test5:AddToggle('FlameGM', {
   Text = 'Invencible (Flame)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.FlameGM = true
         while _G.FlameGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "flame_breathing_flaming_eruption",
            [4] = 1
          }
   
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
      wait(0.1)
         end
      else
         _G.FlameGM = false
         while _G.FlameGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "flame_breathing_flaming_eruption",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.1)
         end
      end
   end    
})

Test5:AddToggle('BeastGM', {
   Text = 'Invencible (Beast)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.BeastGM = true
         while _G.BeastGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "Beast_breathing_devouring_slash",
            [4] = 1
          }
   
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
      wait(0.5)
         end
      else
         _G.BeastGM = false
         while _G.BeastGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "Beast_breathing_devouring_slash",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.5)
         end
      end
   end    
})

Test5:AddToggle('InsectGM', {
   Text = 'Invencible (Insect)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.InsectGM = true
         while _G.InsectGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "insect_breathing_dance_of_the_centipede",
            [4] = 1
          }
   
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
      wait(0.5)
         end
      else
         _G.InsectGM = false
         while _G.InsectGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "insect_breathing_dance_of_the_centipede",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.5)
         end
      end
   end    
})

Test5:AddToggle('WindGM', {
   Text = 'Invencible (Wind)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.WindGM = true
         while _G.WindGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "Wind_breathing_black_wind_mountain_mist",
            [4] = 1
          }
   
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
      wait(0.5)
         end
      else
         _G.WindGM = false
         while _G.WindGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "Wind_breathing_black_wind_mountain_mist",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.5)
         end
      end
   end    
})

Test5:AddToggle('WaterGM', {
   Text = 'Invencible (Water)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         _G.WaterGM = true
         while _G.WaterGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "Water_fall_basin",
            [4] = 1
          }
   
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
      wait(0.5)
         end
      else
         _G.WaterGM = false
         while _G.WaterGM do
         local args = {
            [1] = "skil_ting_asd",
            [2] = game:GetService("Players").LocalPlayer,
            [3] = "Water_fall_basin",
            [4] = 1
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
         wait(0.5)
         end
      end
   end    
})

Test5:AddToggle('RengokuMode', {
   Text = 'Rengoku Form (Human)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(true)
      else
         game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(false)
      end
   end
})

Test5:AddToggle('GodSpeedMode', {
   Text = 'God Speed Mode (Human)',
   Default = false, -- Default value (true / false)
   Callback = function(state)
      if state then
         game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(true)
      else
         game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(false)
      end
   end
})

 -- // LOCATIONS - TELEPORTS

local isAutoBuyEnabled = false
local autoBuyLoop

local function buyBandage()
    local args = {
        [1] = "buysomething",
        [2] = game:GetService("Players").LocalPlayer,
        [3] = "Bandage",
        [4] = game:GetService("ReplicatedStorage").Player_Data[game:GetService("Players").LocalPlayer.Name].Yen,
        [5] = game:GetService("ReplicatedStorage").Player_Data[game:GetService("Players").LocalPlayer.Name].Inventory,
        [6] = 10
    }
    
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
end

Universe1:AddButton("Server Hop", function()
   Hop()
end)

Universe1:AddButton("Hop Low Server", function()
   local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

Teleport()
end)

Universe1:AddButton({
    Text = 'NoGay Village',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48831.930957
        local ohString3 = "Nomay Village"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})


Universe1:AddButton({
    Text = 'Wop City',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48874.3168601
        local ohString3 = "Wop City"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})

Universe1:AddButton({
    Text = 'Mugay Train Station',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48901.34144
        local ohString3 = "Mugen Train Station"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})

Universe1:AddButton({
    Text = 'Village 2',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48914.7027964
        local ohString3 = "Village 2"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Snowy Place',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48930.8501156
        local ohString3 = "Snowy Place"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Cave 1',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 48974.763250699994
        local ohString3 = "Cave 1"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)  
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Mist trainer location',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49037.9464306
        local ohString3 = "Mist trainer location"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Cave 2',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49286.9347697
        local ohString3 = "Cave 2"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Sound Cave',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49297.9620753
        local ohString3 = "Sound Cave"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3) 
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Akeza Cave',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49440.4521043
        local ohString3 = "Akeza Cave"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Beast Cave',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49475.5494584
        local ohString3 = "Beast Cave"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3) 
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = "Wop's training grounds",
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49529.417110899994
        local ohString3 = "Wop's training grounds"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Devourers Jaw',
    Func = function()
        local ohString1 = "Players.LeossinDaRossa12.PlayerGui.Npc_Dialogue.Guis.ScreenGui.LocalScript"
        local ohNumber2 = 49548.625795199994
        local ohString3 = "Devourers Jaw"
        
        game:GetService("ReplicatedStorage").teleport_player_to_location_for_map_tang:InvokeServer(ohString1, ohNumber2, ohString3)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Tsune Village(Old Insta)',
    Func = function()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(1214, 569, 77)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Split Boulder(Old Insta)',
    Func = function()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(1257.22046, 497.445526, -271.497253, -0.995884061, 0, 0.090637207, 0, 1.00000012, 0, -0.090637207, 0, -0.995884061)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'Meditate(Old Insta)',
    Func = function()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(130.404846, 599.6427, 520.139404, -0.573853314, 0, 0.818958104, 0, 1, 0, -0.818958223, 0, -0.573853254)
    end,
    DoubleClick = false,
})
Universe1:AddButton({
    Text = 'StuckPlace Akeza (Old Insta)',
    Func = function()
        LP.Character.HumanoidRootPart.CFrame =CFrame.new(2013.37976, 482.645813, -108.943802)
    end,
    DoubleClick = false,
})
Library:OnUnload(function()
   print('Unloaded!')
   Library.Unloaded = true
end)

-- UI Settings
local MenuGroup = Tabs['Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'LeftControl', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

SaveManager:SetFolder('UniverseHub')
