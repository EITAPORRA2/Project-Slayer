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

local Player = game:GetService("Players").LocalPlayer;
local player = game:GetService("Players").LocalPlayer;
local UIS = game:GetService'UserInputService';
local Players = game:FindService("Players")
local players = game:FindService("Players")
local plr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = Workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local UserInputService = cloneref(game:GetService'UserInputService')
local runservice = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local PathfindingService = game:GetService("PathfindingService")
local mouse = player:GetMouse()
local mobs = {""} -- MOBS TABLE
local npcs = {""}
local fiend = {}
local fiends = {}
local Character = Player.Character
local offset = 0
local zones = {}
local zonesN = {""}
local boss = {}
local enemy = {}
local noclipE = false
local antifall = nil
local tp_speed = 250
local infinite_gas = false
local infinite_blade_durability = false
game:GetService("Players").LocalPlayer.DisplayName = "UniverseHub"


local mt = getrawmetatable(game)
local nc = mt.__namecall

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

--Instances
local Map = workspace.Map
local Mobs = workspace.Mobs
local Remotes = ReplicatedStorage.Remotes
local Client = Players.LocalPlayer

--#region Functions
local spawn, wait = task.spawn, task.wait

local FireServer = Instance.new("RemoteEvent").FireServer
local InvokeServer = Instance.new("RemoteFunction").InvokeServer

function Call(self, ...) --Caching the FireServer and InvokeServer functions for optimization
    local Method = self.ClassName == ("RemoteEvent") and FireServer or self.ClassName == ("RemoteFunction") and InvokeServer

    return spawn(Method, self, ...)
end

player.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local Initiate_S = Remotes.To_Server.Handle_Initiate_S_

local AttackMethods = {
    Fist = "fist_combat",
    Sword = "Sword_Combat_Slash",
    Claws = "claw_Combat_Slash",
    Fans = "fans_combat_slash",
    Scythe = "Scythe_Combat_Slash",
}

function Attack()
    if Method == nil then 
        Method = "Fist"
    end
    local Method = AttackMethods[Method]

    for Cycle=1, 8 do
        Call(
            Initiate_S,
            Method,
            Client,
            Client.Character,
            Client.Character.HumanoidRootPart,
            Client.Character.Humanoid,
            Cycle ~= 8 and Cycle or Cycle == 8 and 919
        )
        task.wait(0.2)
    end
end


function Attack1()
    if Method == nil then 
        Method = "Fist"
    end
    local Method = AttackMethods[Method]

    for Cycle=1, 8 do
        Call(
            Initiate_S,
            Method,
            Client,
            Client.Character,
            Client.Character.HumanoidRootPart,
            Client.Character.Humanoid,
            919,
            "ground_slash"
        )
        Call(
            Initiate_S,
            Method,
            Client,
            Client.Character,
            Client.Character.HumanoidRootPart,
            Client.Character.Humanoid,
            math.huge,
            "ground_slash"
        )
    end
end

function CreateInstance(Class, Properties)
    local Instance = Instance.new(Class)

    for Property, Value in Properties do
        Instance[Property] = Value
    end

    return Instance
end
--#endregion
function findMob1()
    local largest = math.huge
    local closestChild = nil
    local hrp = Client.Character:WaitForChild("HumanoidRootPart")
    for i, v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
            local magnitude = (Client.Character.HumanoidRootPart.Position - v:GetBoundingBox().Position).magnitude
            if magnitude < largest then
                closestChild = v
                largest = magnitude
            end
        end
    end
    return closestChild
end

local Orbs = {
    "InstaKill",
    "HealthRegen",
    "StaminaRegen",
    "BloodMoney",
    "DoublePoints",
}

function ClaimOrbs()
    for i, Orb in next, Map:GetChildren() do
        if table.find(Orbs, Orb.Name) then
            pcall(Teleport, Orb:FindFirstChildOfClass("MeshPart").CFrame.Position, nil, 256)
        end
    end
end

local enabled = true
local walkSpeed = 100

function Walkspeed()
    local UIS = game:GetService("UserInputService")
    local RS = game:GetService("RunService")
    local W, A, S, D
    local xVelo, yVelo

    RS.RenderStepped:Connect(function()
        if not enabled then return end
        task.wait(0.1)
        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
        local C = game.Workspace.CurrentCamera
        local LV = C.CFrame.LookVector

        for i,v in pairs(UIS:GetKeysPressed()) do
            if v.KeyCode == Enum.KeyCode.W then
                W = true
            end
            if v.KeyCode == Enum.KeyCode.A then
                A = true
            end
            if v.KeyCode == Enum.KeyCode.S then
                S = true
            end
            if v.KeyCode == Enum.KeyCode.D then
                D = true
            end
        end

        if W == true and S == true then
            yVelo = false
            W,S = nil
        end

        if A == true and D == true then
            xVelo = false
            A,D = nil
        end

        if yVelo ~= false then
            if W == true then
                if xVelo ~= false then
                    if A == true then
                        local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(45), 0)).LookVector
                        HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
                        W,A = nil
                    else
                        if D == true then
                            local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-45), 0)).LookVector
                            HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
                            W,D = nil
                        end
                    end
                end
            else
                if S == true then
                    if xVelo ~= false then
                        if A == true then
                            local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(135), 0)).LookVector
                            HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
                            S,A = nil
                        else
                            if D == true then
                                local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-135), 0)).LookVector
                                HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
                                S,D = nil
                            end
                        end
                    end
                end
            end
        end

if W == true then
   HRP.Velocity = Vector3.new((LV.X * walkSpeed), HRP.Velocity.Y, (LV.Z * walkSpeed))
end
if S == true then
   HRP.Velocity = Vector3.new(-(LV.X * walkSpeed), HRP.Velocity.Y, -(LV.Z * walkSpeed))
end
if A == true then
   local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(90), 0)).LookVector
   HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
end
if D == true then
   local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-90), 0)).LookVector
   HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
end

xVelo, yVelo, W, A, S, D = nil
end)

end



local function moveto(obj, speed)
    local info = TweenInfo.new(((Client.Character.HumanoidRootPart.Position - obj.Position).Magnitude) / speed,Enum.EasingStyle.Linear)
    local tween = TweenService:Create(Client.Character.HumanoidRootPart, info, {CFrame = obj})
    if not Client.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", Client.Character.HumanoidRootPart)
        antifall.Velocity = Vector3.new(0, 0, 0)
        tween:Play()
        tween.Completed:Wait()
        antifall:Destroy()
    end
end




--Main
local BodyVelocity = CreateInstance("BodyVelocity", {MaxForce = Vector3.new(1/0, 1/0, 1/0), Velocity = Vector3.zero, Name = "BV"})
local BodyAngularVelocity = CreateInstance("BodyAngularVelocity", {MaxTorque = Vector3.new(1/0, 1/0, 1/0), AngularVelocity = Vector3.zero, Name = "BAV"})



local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Universe Hub",
    LoadingTitle = "Loading Universe",
    LoadingSubtitle = "Feito com o bumbum",
   ConfigurationSaving = {
        Enabled = true,
        FolderName = "Universe Hub", -- Create a custom folder for your hub/game
        FileName = "Project Slayer Map 1",
        Rayfield:LoadConfiguration()
    }})

local Main = Window:CreateTab("Main")
local Misc = Window:CreateTab("Misc")
local Bypasses = Window:CreateTab("Bypass")
local arrow = Window:CreateTab("OP Auras")
local AutoOrb = Window:CreateTab("Auto ORB")

local Button = Misc:CreateButton({
   Name = "FPS Boost",
   Callback = function()
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
end
   end,
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
    Name = "Inf Block",
    CurrentValue = false,
    Flag = "BuyExp",
    Callback = function(v)
        _G.Block = v
        
        while _G.Block do
        task.wait()
        local ohString1 = "add_blocking"
        local ohString2 = math.huge
        local ohNumber3 = math.huge
        local ohInstance4 = math.huge
        local ohNumber5 = math.huge

        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(ohString1, ohString2, ohNumber3, ohInstance4, ohNumber5)
        end
        if not _G.Block then
    local ohString1 = "remove_blocking"
    local ohInstance2 = game:GetService("ReplicatedStorage").PlayerValues[player.Name]

    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(ohString1, ohInstance2)
        end
    end
})

Misc:CreateToggle({
    Name = "Auto Loot",
    CurrentValue = false,
    Flag = "BuyExp",
    Callback = function(v)
        _G.Autoloot = v
    end
})

Misc:CreateToggle({
    Name = "Auto Buy EXP on dead",
    CurrentValue = false,
    Flag = "BuyExp",
    Callback = function(v)
        _G.EXP = v
        repeat wait() until game:GetService("Workspace")["Dungeon_Timer"].Value == 0 and game:GetService("Workspace")["Total_Time"].Value > 0
        if _G.EXP then
            Client.Character.Humanoid.Health = 0
        end
    end
})

Misc:CreateToggle({
    Name = "Auto Buy WEN on dead",
    CurrentValue = false,
    Flag = "BuyWen",
    Callback = function(v)
        _G.WEN = v
        repeat wait() until game:GetService("Workspace")["Dungeon_Timer"].Value == 0 and game:GetService("Workspace")["Total_Time"].Value > 0
        if _G.WEN then
            Client.Character.Humanoid.Health = 0
        end
    end
})

Main:CreateToggle({
    Name = "Fist",
    Flag = "",
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
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
       game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash") 
        wait(0.8)
        wait(0.3)
    wait(1) end -- loops.
    else
        getgenv().killaura = false
        end
    end
})

Main:CreateToggle({
    Name = "Sword",
    Flag = "",
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

        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
       game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash") 
        wait(0.8)
        wait(0.3)
    wait(1) end -- loops.
    else
        getgenv().killaura = false
        end
    end
})

Main:CreateToggle({
    Name = "Fans (CAN KICK)",
    Flag = "",
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
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
       game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash") 
        wait(0.8)
        wait(0.3)
    wait(1) end -- loops.
    else
        getgenv().killaura = false
        end
    end
})

Main:CreateToggle({
    Name = "Scythe",
    Flag = "",
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

        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
       game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash") 
        wait(0.8)
        wait(0.3)
    wait(1) end -- loops.
    else
        getgenv().killaura = false
        end
    end
})

Main:CreateToggle({
    Name = "Claw",
    Flag = "",
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

        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
       game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
        wait(0.1)
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash") 
        wait(0.8)
        wait(0.3)
    wait(1) end -- loops.
    else
        getgenv().killaura = false
        end
    end
})

Main:CreateLabel("Auto DG")

        local AutoDungeonN = Main:CreateToggle({
            Name = "Auto Dungeon",
            CurrentValue = false,
            Flag = "DungeonN", 
            SectionParent = Method2,
            Callback = function(v)
                getgenv().FarmAll = v
                local Humanoid = Client.Character.Humanoid
                local hrp = Client.Character:WaitForChild("HumanoidRootPart")
                while task.wait() do
                    if getgenv().FarmAll == false then return end
        
                    local mob = findMob1()
                    if mobs == nil then
                        while task.wait() do
                            task.wait()
                            if getgenv().FarmAll == false then return end
                            if findMob1() ~= nil then break end
                        end
                    else
                        while wait() do
                            task.wait()
        
                            if getgenv().FarmAll == false then return end
        
                            if mob and mob:FindFirstChild("Humanoid") ~= nil and mob:FindFirstChild("Humanoid").Health > 0 then
                                local ehum = mob:WaitForChild("Humanoid")
                                local character = Client.Character
                                local hrp = character:WaitForChild("HumanoidRootPart")
                                

                                    repeat
                                        task.wait()
                                        local character = Client.Character
                                        local hrp = character:WaitForChild("HumanoidRootPart")
                                        local magnitude = (character.HumanoidRootPart.Position - mob:GetModelCFrame().Position).Magnitude
                                            moveto(mob:GetModelCFrame() * CFrame.new(0, 0, -tonumber(5)) * CFrame.Angles(0, math.rad(180), 0), 300)


                                    until not FarmAll or not mob or mob:FindFirstChild("Humanoid").Health <= 0 
                            else
                                break
                            end
                        end
                    end
                    task.wait()
                end
            end
        })

local AutoDungeonN = Main:CreateToggle({
    Name = "Auto Dungeon 2",
    CurrentValue = false,
    Flag = "DungeonN", 
    Callback = function(v)
        getgenv().FarmAll = v
        local Humanoid = Client.Character.Humanoid
        local hrp = Client.Character:WaitForChild("HumanoidRootPart")
        while task.wait() do
            if getgenv().FarmAll == false then return end
 
            local mob = findMob1()
            if mobs == nil then
                while task.wait() do
                    task.wait()
                    if getgenv().FarmAll == false then return end
                    if findMob1() ~= nil then break end
                end
            else
                while wait() do
                    task.wait()
 
                    if getgenv().FarmAll == false then return end
 
                    if mob and mob:FindFirstChild("Humanoid") ~= nil and mob:FindFirstChild("Humanoid").Health > 0 then
                        local ehum = mob:WaitForChild("Humanoid")
                        local character = Client.Character
                        local hrp = character:WaitForChild("HumanoidRootPart")
 
                        repeat
                            task.wait()
                            local character = Client.Character
                            local hrp = character:WaitForChild("HumanoidRootPart")
                            local magnitude = (character.HumanoidRootPart.Position - mob:GetModelCFrame().Position).Magnitude
                            moveto(mob:GetModelCFrame() * CFrame.new(0, tonumber(8), 0) * CFrame.Angles(math.rad(-90), 0, 0), 300)
 
                                    until not FarmAll or not mob or mob:FindFirstChild("Humanoid").Health <= 0 
                            else
                                break
                            end
                        end
                    end
                    task.wait()
                end
            end
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


function Teleport(Position, Offset, Speed)
    local Distance = Client:DistanceFromCharacter(Position + (Offset or Vector3.zero))

    if Distance < 2500 then
        local Tween = TweenService:Create(
            Client.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = CFrame.new(Position + (Offset or Vector3.zero)
        )})

        Tween:Play()

        return Tween.Completed:Wait()
    else
        Client.Character.HumanoidRootPart.CFrame = Position + (Offset or Vector3.zero)
        
        return wait()
    end
end

spawn(function()
    while task.wait() do
    while _G.Enabled do
        task.wait()
        if not _G.Enabled then return end
        for i, v in next, Mobs:GetChildren() do
            if v:FindFirstChildOfClass("Model") and v:FindFirstChildOfClass("Model"):FindFirstChild("Humanoid") and v:FindFirstChildOfClass("Model"):FindFirstChild("Humanoid").Health > 0 then
                Mob = v:FindFirstChildOfClass("Model")
            pcall(function()
                BodyVelocity:Clone().Parent = Client.Character.LowerTorso
                BodyAngularVelocity:Clone().Parent = Client.Character.LowerTorso
                if not _G.Enabled then return end
                Teleport(Mob.HumanoidRootPart.CFrame.Position, Vector3.new(0, 50, 0), 200)
            end)        
            
            repeat
                local Status = pcall(function()
                    if #Mobs:GetChildren() == 0 then
                        if not _G.Enabled then return end
                        spawn(ClaimOrbs)
                    end
                    if not _G.Enabled then return end
                    Client.Character.HumanoidRootPart.CFrame = Mob.HumanoidRootPart.CFrame
                    wait(0.30)
                    if not _G.Enabled then return end
                    Attack()
                    task.wait(0.1)
                    if not _G.Enabled then return end
                    Teleport(Mob.HumanoidRootPart.CFrame.Position, Vector3.new(0, 50, 0), 250)
                    if not _G.Enabled then return end
                    repeat wait() until Client:WaitForChild("combotangasd123", 9e9).Value == 0 and wait(0.25)
                end)
                if not Status or not _G.Enabled then
                    break
                end

            until wait() and not _G.Enabled or Mob:FindFirstChild("Humanoid") and Mob:FindFirstChild("Humanoid").Health <= 0

            pcall(function()
                Client.Character.LowerTorso:FindFirstChildOfClass("BodyVelocity"):Destroy()
                Client.Character.LowerTorso:FindFirstChildOfClass("BodyAngularVelocity"):Destroy()    
            end)
        end
        end
        wait()
    end
end
end)
spawn(function()
    while task.wait() do
    while _G.Autoloot do
        local lootChests = game:GetService("Workspace").Debree:GetDescendants()
        for _, chest in ipairs(lootChests) do
            if chest and chest.Name == "Loot_Chest" and chest:FindFirstChild("Drops") then
                local remote = chest:WaitForChild("Add_To_Inventory")
                for _, drop in ipairs(chest.Drops:GetChildren()) do
                    remote:InvokeServer(drop.Name)
                end
            end
        end
        
        wait(3)
    end
    end
end)

spawn(function()
    while task.wait() do
        if getgenv().Killaura or getgenv().KillauraOP then
            for i,v in pairs(player.Character:GetChildren()) do
                if v:IsA("Tool") then
                    v.Parent = player.Backpack
                end
            end
        end
    end
end)

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
    if _G.EXP then
        
        _G.Enabled = false
        getgenv().FarmAll = false
        task.wait(15)
        game:GetService("ReplicatedStorage").TeleportToShop:FireServer()
        task.wait(1)
        Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Shop Items"]["EXP Elixir"].Handle.CFrame
        task.wait(0.3)
        repeat
            fireproximityprompt(game:GetService("Workspace")["Shop Items"]["EXP Elixir"].Handle.Buy)
        until task.wait() and Client.leaderstats.Points.Value < 25
        task.wait(300)
        game:GetService("TeleportService"):Teleport(9321822839, Client)  -- replace the numbers with the id of the game you want to teleport to
    elseif _G.WEN then
        _G.Enabled = false
        getgenv().FarmAll = false

        task.wait(15)
        game:GetService("ReplicatedStorage").TeleportToShop:FireServer()
        task.wait(1)
        Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Shop Items"]["Wen Bag"]["Cylinder.001"].CFrame
        task.wait(0.3)
        repeat
            fireproximityprompt(game:GetService("Workspace")["Shop Items"]["Wen Bag"].Buy)
        until task.wait() and Client.leaderstats.Points.Value < 25
        task.wait(300)
        game:GetService("TeleportService"):Teleport(9321822839, Client)  -- replace the numbers with the id of the game you want to teleport to
    end
    
    end)

function cuzinpreto()
    local A_1 = "Normal"
local Event = game:GetService("ReplicatedStorage").TeleportCirclesEvent
Event:FireServer(A_1)
end
cuzinpreto()

Bypasses:CreateToggle({
    Name = "Arrow Bypass",
    Callback = function(v)
        _G.bypass = v
    
        bypass()
    end
    })
        
function bypass()
    if _G.bypass then
        loop = true
    else
        loop = false
    end
        while loop do
                local ohString1 = "skil_ting_asd"
                local ohInstance2 = game:GetService("Players").LocalPlayer
                local ohString3 = "arrow_knock_back"
                local ohNumber4 = 5

                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(ohString1, ohInstance2, ohString3, ohNumber4)

                wait(6)
            end
        end

        local toggle = false -- Variável para controlar o toggle

        local function attackLoop()
            while toggle do
                local ohString1 = "arrow_knock_back_damage"
                local ohInstance2 = game:GetService("Players").LocalPlayer
                local ohInstance4 = nil -- Variável para armazenar o NPC mais próximo encontrado
                local ohNumber5 = 999999999
                local ohNumber6 = 999999999
        
                local mob = findMob1() -- Encontra o NPC mais próximo usando a função findMob()
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
        
        local Toggle = arrow:CreateToggle({
            Name = "Arrow OP",
            CurrentValue = false,
            Callback = function(value)
                toggle = value
                if toggle then
                    attackLoop() -- Inicia o loop
                end
            end,
        })

Bypasses:CreateToggle({
    Name = "Thunder Bypass",
    Callback = function(v)
        _G.thunderbypass = v
        thunderbypass()
    end
})

arrow:CreateToggle({
    Name = "Thunder KA",
    CurrentValue = false,
    Callback = function(v)
        _G.thunderkillaura = v
        thunderglobal()
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

        wait(0.65)
    end
end

AutoOrb:CreateToggle({
    Name = "Orb StaminaRegen",
    Callback = function (v)
        _G.regenstamina = v
        regenstaminaa()
    end
})

AutoOrb:CreateToggle({
    Name = "Orb InstaKill",
    Callback = function (v)
        _G.instakir = v
        instakilll()
    end
})

AutoOrb:CreateToggle({
    Name = "Orb Blood Money",
    Callback = function (v)
        _G.bloodporra = v
        bloodporraa()
    end
})

AutoOrb:CreateToggle({
    Name = "Orb Health Regen",
    Callback = function (v)
        _G.regencu = v
        reggencuu()
    end
})

AutoOrb:CreateToggle({
    Name = "Orb Double Points",
    Callback = function (v)
        _G.dablesperma = v
        dablespermaa()
    end
})



function regenstaminaa()
    if _G.regenstamina then
        locall = true
    else
        locall = false
    end

    while locall do
        local success, erro = pcall(function ()
            
    local targetObject = game:GetService("Workspace").Map.StaminaRegen.Sphere
    local myObject = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

    if targetObject and myObject then
        local targetCFrame = myObject.CFrame
        targetObject.CFrame = targetCFrame
    end

        end)
        wait(1)
    end
end

function instakilll()
    if _G.instakir then
        locall2 = true
    else
        locall2 = false
    end

    while locall2 do
        local success, erro = pcall(function ()
        local targetObject = game:GetService("Workspace").Map.InstaKill["Sphere.003"]
        local myObject = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

        if targetObject and myObject then
            local targetCFrame = myObject.CFrame
            targetObject.CFrame = targetCFrame
        end
        end)
        wait(1)
    end
end

function bloodporraa()
    if _G.bloodporra then
        locall3 = true
    else
        locall3 = false
    end

    while locall3 do
        local success, erro = pcall(function ()
            local targetObject = game:GetService("Workspace").Map.BloodMoney["Sphere.009"]
            local myObject = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            
            if targetObject and myObject then
                local targetCFrame = myObject.CFrame
                targetObject.CFrame = targetCFrame
            end
        end)
        wait(1)
    end
end

function reggencuu()
    if _G.regencu then
        locall4 = true
    else
        locall4 = false
    end

    while locall4 do
        local success, erro = pcall(function ()
            local targetObject = game:GetService("Workspace").Map.HealthRegen["Sphere.007"]
            local myObject = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            
            if targetObject and myObject then
                local targetCFrame = myObject.CFrame
                targetObject.CFrame = targetCFrame
            end
        end)
        wait(1)
    end
end

function dablespermaa()
    if _G.dablesperma then
        locall5 = true
    else
        locall5 = false
    end

    while locall5 do
        local success, erro = pcall(function ()
            local targetObject = game:GetService("Workspace").Map.DoublePoints["Sphere.012"]
            local myObject = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            
            if targetObject and myObject then
                local targetCFrame = myObject.CFrame
                targetObject.CFrame = targetCFrame
            end
        end)
        wait(1)
    end
end


--Safe Place

--"6426.42822, -26.7734604, -952.144653, -1, 0, 0, 0, 1, 0, 0, 0, -1"