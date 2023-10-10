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

local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Subs = Library.subs 
local IsOpen = Subs.Wait

local Core = Library:CreateWindow({
    Name = "Universe Shit",
    Themeable = {
        Info = {"Universe On Top"},
        Credit = false, 
        Background = "",
        Visible = false
    }
})

local Main = Core:CreateTab({
    Name = "Main"
})

local Misc = Core:CreateTab({
    Name = "Misc"
})

local Farming = Main:CreateSection({
    Name = "Auto-Farm"
})

local PPlayers = Main:CreateSection({
    Name = "Players"
})

local Settings = Main:CreateSection({
    Name = "Settings"
})

local BossStatus = Main:CreateSection({
    Name = "Bosses"
})

local Aura = Main:CreateSection({
    Name = "Aura",
    Side = "Right"
})

local Teleports = Main:CreateSection({
    Name = "Teleports",
    Side = "Right"
})

local Info = Main:CreateSection({
    Name = "Info",
    Side = "Right"
})

local MiscTroll = Main:CreateSection({
    Name = "Troll",
    Side = "Right"
})

local MiscMain = Misc:CreateSection({
    Name = "Main"
})

local Things = Misc:CreateSection({
    Name = "Some Things",
    Side = "Right"
})

local AutoThings = Misc:CreateSection({
    Name = "Auto Things"
})


local SkillMisc = Misc:CreateSection({
    Name = "Skill"
})

local MiscMisc = Misc:CreateSection({
    Name = "Misc",
    Side = "Right"
})

local table = table 
local insert = table.insert 
local task = task
local spawn = task.spawn 
local pcall = pcall
local CoreGui = game:GetService("CoreGui")
local StarterPack = game:GetService("StarterPack")
local Workspace = game:GetService("Workspace")
local MobFolder = Workspace:WaitForChild("Mobs")
local Map = Workspace:WaitForChild("Map")
local BossFolder = MobFolder:FindFirstChild("Bosses")
local Flowers = Workspace:FindFirstChild("Demon_Flowers_Spawn")
local Debree = Workspace:WaitForChild("Debree")
local RunService = game:GetService("RunService")
local Stepped = RunService.Stepped
local Players = game:GetService("Players")
local Player = Players.LocalPlayer 
local LP = game:GetService("Players").LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local PlayerScripts = Player:WaitForChild("PlayerScripts")
local PopUps = PlayerGui:WaitForChild("Pop_Ups")
local LittleBars = PopUps:WaitForChild("LitleBars_Holder")
local FuriosityDisplay = LittleBars:WaitForChild("clan_furiosity_skill123asd_display")
local Backpack = Player:WaitForChild("Backpack")
local Character = Player.Character or Player.CharacterAdded:Wait() 
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")
local Combo 
local oldindex
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MiscFolder = ReplicatedStorage:WaitForChild("Misc")
local Clashing = MiscFolder:WaitForChild("Clashing")
local Ouwigahara = ReplicatedStorage:FindFirstChild("Ouwigahara") 
local Powerups = Ouwigahara and Ouwigahara:FindFirstChild("Powerups")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local IceCounter = Remotes:WaitForChild("ice_counter_remoteasd")
local DrumRemote = Remotes:WaitForChild("war_Drums_remote")
local HeartAblaze = Remotes:WaitForChild("heart_ablaze_mode_remote")
local GodSpeed = Remotes:WaitForChild("thundertang123")
local Furiosity = Remotes:WaitForChild("clan_furiosity_add")
local KamadoHeal = Remotes:WaitForChild("heal_tang123asd")
local ToServer = Remotes:WaitForChild("To_Server")
local PDodge = Remotes:WaitForChild("P_Dodge")
local Handle_Initiate_S_ = ToServer:WaitForChild("Handle_Initiate_S_")
local Handle_Initiate_S = ToServer:WaitForChild("Handle_Initiate_S")
local PlayerValues = ReplicatedStorage:WaitForChild("PlayerValues")
local PlayerData = ReplicatedStorage:WaitForChild("Player_Data")
local LocalValues = PlayerValues:WaitForChild(Player.Name)
local LocalData = PlayerData:WaitForChild(Player.Name)
local BreathingProgress = LocalData:WaitForChild("BreathingProgress")
local BreathingCount = BreathingProgress:WaitForChild("1")
local BreathingNew = BreathingProgress:WaitForChild("2")
local DemonProgress = LocalData:WaitForChild("DemonProgress")
local DemonCount = DemonProgress:WaitForChild("1")
local DemonNew = DemonProgress:WaitForChild("2")
local Clan = LocalData:WaitForChild("Clan")
local Spins = LocalData:WaitForChild("Spins")
local Race = LocalData:WaitForChild("Race")
local Yen = LocalData:WaitForChild("Yen")
local Inventory = LocalData:WaitForChild("Inventory")
local TweenService = game:GetService("TweenService")
local Bindable = Instance.new("BindableEvent")
local KillAuraReady = false  
local Status = false
local Linear = Enum.EasingStyle.Linear 
local Multiplier = 1
local LastTween = {Pause = function() end}
local BreathingLabel, DemonLabel, ClanLabel, SpinLabel, CClan, RaceLabel, RRace, AntiSun, ToggleGod, ToggleSpeed, ToggleAblaze, BossLabel
local TweenSpeed = 400 
local Current = true 
local RG = getrenv()._G 
local Entities = {} 
local Bosses = {} 
local Mobs = {} 
local Weapons = {
    ["Scythe"] = "Scythe_Combat_Slash", 
    ["Sword"] = "Sword_Combat_Slash",
    ["Claw"] = "claw_Combat_Slash",
    ["Fans"] = "fans_combat_slash",
    ["Fist"] = "fist_combat"
}
local All = {
    ["Text"] = ""
}
local Races = {
    [1] = "Human",
    [2] = "Slayer",
    [3] = "Demon",
}
local Map1 = {
    ["Kiribating Village"] = CFrame.new(120, 282, -1743),
    ["Zapiwara Cave"] = CFrame.new(-38, 275, -2403),
    ["Ushumaro Village"] = CFrame.new(-90, 354, -3170),
    ["Butterfly Mansion"] = CFrame.new(3001, 316, -3806),
    ["Final Selection"] = CFrame.new(5258, 365, -2422),
    ["Zapiwara Mountain"] = CFrame.new(-366, 425, -2371),
    ["Wind Trainer"] = CFrame.new(1797, 334, -3466),
    ["Kabiwaru Village"] = CFrame.new(2015, 315, -3051),
    ["Waroru Cave"] = CFrame.new(689, 261, -2469),
    ["Ouwbayashi Home"] = CFrame.new(1241, 320, -4568),
    ["Dangerous Woods"] = CFrame.new(3839, 342, -4177)
}

local Map2 = {
    ["Nomay Village"] = CFrame.new(3562, 673, -2109),
    ["Mugen Train Station"] = CFrame.new(783, 495, 900),
    ["Wop City"] = CFrame.new(-31, 599, -431),
    ["Village 2"] = CFrame.new(1215, 567, 95),
    ["Cave 1"] = CFrame.new(4252, 671, 581),
    ["Cave 2"] = CFrame.new(1182, 485, -1192),
    ["Mist trainer location"] = CFrame.new(4324, 671, -569),
    ["Akeza Cave"] = CFrame.new(1902, 554, -150),
    ["Frozen Lake"] = CFrame.new(2049, 481, -769),
    ["Beast Cave"] = CFrame.new(1840, 481, 37),
    ["Wop's training grounds"] = CFrame.new(223, 595, 483),
    ["Snowy Place"] = CFrame.new(379, 531, -2865),
    ["Devourers Jaw"] = CFrame.new(480, 507, -1864),
    ["Sound Cave"] = CFrame.new(1828, 487, -2770)
}

local Godmodes = {
    "Water_Surface_Slash",
    "Water_fall_basin",
    "insect_breathing_dance_of_the_centipede",
    "blood_burst_explosive_choke_slam",
    "explosive_demon_art_blood_burst",
    "Wind_breathing_black_wind_mountain_mist",
    "flame_breathing_flaming_eruption",
    "scythe_asteroid_reap",
    "Beast_breathing_devouring_slash",
    "akaza_flashing_williow_skillasd",
    "akaza_bda_compass_needle",
    "dream_bda_flesh_monster",
    "swamp_bda_swamp_domain",
    "snow_breatihng_layers_frost",
    "snow_breathing_illusory_Storm",
    "sound_breathing_smoke_screen",
    "ice_demon_art_bodhisatva"
}  

local Map2List = {}
local Map1List = {}
for i,v in next, Map2 do insert(Map2List, i) end
for i,v in next, Map1 do insert(Map1List, i) end
local AliveBosses = {}
local Signals = Library.signals

local IsBoss = function(Instance)
    if BossFolder then 
        return Instance:IsDescendantOf(BossFolder) 
    else 
        return false 
    end 
end 

local find = function(Table, Value) for i,v in next, Table do if v == Value then return i end end end

local Added = function(Instance)
    local Parent = Instance.Parent 
    if (not Instance:IsA("Model")) or ((not Parent:IsA("Configuration")) and (not Parent:IsA("Folder"))) then return end 
    local Config = Parent:WaitForChild("Npc_Configuration")
    Config = require(Config)
    local Spawn = Config.Npc_Spawning.Spawn_Locations[1]
    if IsBoss(Instance) then 
        insert(AliveBosses, Instance.Name)
        Bosses[Instance.Name] = Instance.Name 
    else 
        Mobs[Instance.Name] = Instance.Name 
    end 
    insert(Entities, {Instance, Spawn})
end 

local Removed = function(Instance)
    if IsBoss(Instance) then 
        local Found = find(AliveBosses, Instance.Name) 
        if Found then 
            AliveBosses[Found] = nil
        end 
    end  
    for i,v in next, Entities do 
        if v[1] == Instance then 
            Entities[i] = nil 
        end 
    end 
end

local Count = function(Table)
    local Ret = 0 
    for i,v in next, Table do Ret = Ret + 1 end
    return Ret 
end 
    
local SelectedBosses, SelectedMobs = {}, {}
local GetClosestMob = function()
    local Ret = {nil, 9999999, nil}
    local Merged = {}
    for i,v in next, SelectedBosses do Merged[#Merged + 1] = v end
    for i,v in next, SelectedMobs do Merged[#Merged + 1] = v end
    local Length = Count(Merged)
    for i,v in next, Entities do 
        local Mob = v[1]
        if not Mob then continue end
        if Length > 0 and (not find(Merged, Mob.Name)) then continue end
        local Spawn = v[2]
        local HRP = Mob:FindFirstChild("HumanoidRootPart")
        local Humanoid = Mob:FindFirstChild("Humanoid")
        if Humanoid and Humanoid.Health > 0 then 
            if HRP then 
                local Dist = (HumanoidRootPart.Position - HRP.Position).Magnitude 
                if Dist < Ret[2] then 
                    Ret[1] = HRP.CFrame 
                    Ret[2] = Dist
                    Ret[3] = Mob 
                    Ret[4] = HRP 
                end 
            elseif Spawn then 
                local Dist = (HumanoidRootPart.Position - Spawn).Magnitude 
                if Dist < Ret[2] then 
                    Ret[1] = CFrame.new(Spawn) 
                    Ret[2] = Dist 
                    Ret[3] = Mob 
                end 
            end 
        end 
    end 
    return Ret 
end 

local GetClosestPlayer = function()
    local Ret = {nil, 99999999}
    for i,v in next, Players:GetPlayers() do 
        if (v == Player) or (Player.Team and (Player.Team == v.Team)) then continue end
        local Character = v.Character 
        local HRP = Character and Character:FindFirstChild("HumanoidRootPart")
        local UpperTorso = Character and Character:FindFirstChild("UpperTorso")
        local IsDead = UpperTorso and UpperTorso:FindFirstChild("Revive_Humanoid")
        if HRP and UpperTorso and (not IsDead) then 
            local Dist = (HRP.Position - HumanoidRootPart.Position).Magnitude 
            if Dist < Ret[2] then
                Ret[1] = HRP.CFrame 
                Ret[2] = Dist
                Ret[3] = v
            end 
        end 
    end 
    return Ret 
end 

local Method, SelectedWeapon = "", "fist_combat"
local FireAttack = function(i)
    return Handle_Initiate_S:FireServer(
        SelectedWeapon, 
        Player, 
        Character, 
        HumanoidRootPart,
        Humanoid, 
        i,
        Method
    )    
end 

local InvokeAttack = function(i)
    return Handle_Initiate_S_:InvokeServer(
        SelectedWeapon, 
        Player, 
        Character, 
        HumanoidRootPart,
        Humanoid, 
        i,
        Method
    )    
end 
local GetClosestFlower = function()
    local Ret = {nil, 9999999}
    for i,v in next, Flowers:GetChildren() do 
        if v:IsA("Model") then 
            local Part = v:FindFirstChild("Cube.002") 
            local Prox = Part and Part:FindFirstChild("Pick_Demon_Flower_Thing") 
            if Part and (not Prox) then continue end 
            local CF = v:GetPivot() 
            local Pos = Vector3.new(CF.X, CF.Y, CF.Z) 
            local Magnitude = (HumanoidRootPart.Position - Pos).Magnitude 
            if Magnitude < Ret[2] then
                Ret[1] = CF 
                Ret[2] = Magnitude 
                Ret[3] = Prox 
                Ret[4] = v
            end 
        end 
    end 
    return Ret
end 

for i,v in next, MobFolder:GetDescendants() do spawn(pcall, Added, v) end 
Signals[#Signals + 1] = MobFolder.DescendantAdded:Connect(Added)
Signals[#Signals + 1] = MobFolder.DescendantRemoving:Connect(Removed)

Signals[#Signals + 1] = Player.CharacterAdded:Connect(function(Char)
    Character = Char
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    Humanoid = Character:WaitForChild("Humanoid")
end)

Signals[#Signals + 1] = Stepped:Connect(function()
    if XLROPFK or Teleporting or XLROPRT or SKTIEP then 
        for i,v in next, Character:GetDescendants() do 
            if v:IsA("BasePart") then 
                v.CanCollide = false 
            end 
        end 
        HumanoidRootPart.Velocity = Vector3.zero
    end 
    if WalkSpeed and Humanoid.WalkSpeed < WalkSpeed then 
        Humanoid.WalkSpeed = WalkSpeed 
    end 
    if JumpPower and Humanoid.JumpPower < JumpPower then 
        Humanoid.JumpPower = JumpPower
    end 
end)

spawn(function()
    while true and IsOpen() do 
        if SpinLabel and ClanLabel and DemonLabel and BreathingLabel then 
            CClan = Clan.Value 
            RRace = Races[Race.Value] 
            local BossString = "Spawned: {"
            for i,v in next, AliveBosses do 
                BossString = BossString.."\n  "..v
            end 
            BossString = BossString.."\n}"
            BossLabel:Set(BossString)
            SpinLabel:Set(("Spins: %i"):format(Spins.Value))
            ClanLabel:Set(("Clan: %s"):format(CClan))
            RaceLabel:Set(("Race: %s"):format(RRace))
            BreathingLabel:Set(("Breathing Progress: %i/%i"):format(BreathingCount.Value, BreathingNew.Value))
            DemonLabel:Set(("Demon Progress: %i/%i"):format(DemonCount.Value, DemonNew.Value)) 
        end 
        task.wait(0.5)
    end 
end)

Signals[#Signals + 1] = Debree.ChildAdded:Connect(function(v)
    if OSTPRKGL and v.Name == "Loot_Chest" then 
        local Remote = v:WaitForChild("Add_To_Inventory")
        local Drops = v:WaitForChild("Drops")  
        repeat 
            for i,v in next, Drops:GetChildren() do 
                Remote:InvokeServer(v.Name)
            end
            task.wait(0.25)
        until not v.Parent
    elseif PRMFLDS and v.Name == "Soul" then 
        local Handle = v:WaitForChild("Handle")
        local Eat = Handle:WaitForChild("Eatthedamnsoul")
        Eat:FireServer()
    end 
end)

loadstring([[
local Old 
Old = hookmetamethod(game, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    if Method == "FireServer" or Method == "fireServer" then 
        local Args = {...}
        local Tbl = Args[4]
        if self.Name == "moddelteasdasd123" or self.Name == "Sun_Damage" or (type(Tbl) == "table" and Tbl["Name"] == "CancelThunderClash") then 
            return 
        end 
    end 
    return Old(self, ...)
end)
]])()

FireAttack(1)
Combo = Player:WaitForChild("combotangasd123")

Farming:AddSlider({
    Name = "Y Offset",
    Min = -1000,
    Max = 1000,
    Value = 1, 
    Flag = "Y",
    Callback = function(State)
        Y = State
    end 
})

local SelectedSkill = ""
Farming:AddToggle({
    Name = "Godmode", 
    Value = false,
    Flag = "Godmode",
    Callback = function(State)
        Godmode = State 
        while Godmode and IsOpen() do 
            Handle_Initiate_S:FireServer("skil_ting_asd", Player, SelectedSkill, 1)
        end 
    end 
})

Farming:AddDropdown({
    Name = "Skill",
    List = Godmodes, 
    Flag = "Skill",
    Nothing = "Select Skill..",
    Callback = function(State)
        SelectedSkill = State 
    end 
})

Farming:AddButton({
    Name = "Secret God | Map 1",
    Callback = function()
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = CFrame.new(222.136902, 281.832642, -1606.17798)

        wait(0.2)

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
    end 
})

Farming:AddButton({
    Name = "Secret God | Activator",
    Callback = function()
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
    end 
})

task.wait(0.1)
Farming:AddToggle({
    Name = "Auto Block",
    Value = false, 
    Flag = "Block",
    Callback = function(State)
        LROPTMFLG = State 
        while LROPTMFLG and IsOpen() do 
            Handle_Initiate_S:FireServer("add_blocking", "", os.clock(), LocalValues, 1) 
        end 
        Handle_Initiate_S_:InvokeServer("remove_blocking", LocalValues)
    end 
})

task.wait(0.1)
Farming:AddToggle({
    Name = "Farm",
    Value = false,
    Flag = "Farm",
    Callback = function(State)
        XLROPFK = State 
        while XLROPFK and IsOpen() do 
            local Table = GetClosestMob() 
            local Pos = Table[1]
            local Magnitude = Table[2]
            if Pos and Magnitude then
                if Magnitude > 100 then 
                    LastTween:Pause()
                    LastTween = TweenService:Create(HumanoidRootPart, TweenInfo.new(Magnitude / TweenSpeed, Linear), {CFrame = Pos})
                    LastTween:Play()
                elseif KillAuraReady then
                    HumanoidRootPart.CFrame = Pos 
                    Bindable:Fire()
                else 
                    HumanoidRootPart.CFrame = Pos + Vector3.new(0, Distance, 0)
                end 
            end 
        end 
    end 
})

task.wait(0.1)
Farming:AddDropdown({
    Name = "Bosses",
    List = Bosses,
    Multi = true,
    Flag = "Bosses",
    Callback = function(State)
        SelectedBosses = State
    end 
})

task.wait(0.1)
Farming:AddDropdown({
    Name = "Mobs",
    List = Mobs,
    Multi = true, 
    Flag = "Mobs",
    Callback = function(State)
        SelectedMobs = State 
    end 
})

task.wait(0.1)
PPlayers:AddToggle({
    Name = "Farm Player",
    Value = false,
    Flag = "FarmPlayer",
    Callback = function(State)
        XLROPRT = State 
        while XLROPRT and IsOpen() do 
            local Table = GetClosestPlayer() 
            local Pos = Table[1]
            local Magnitude = Table[2]
            if Pos and Magnitude then
                if Magnitude > 100 then 
                    LastTween:Pause()
                    LastTween = TweenService:Create(HumanoidRootPart, TweenInfo.new(Magnitude / TweenSpeed, Linear), {CFrame = Pos})
                    LastTween:Play()
                elseif KillAuraReady then
                    HumanoidRootPart.CFrame = Pos 
                    Bindable:Fire()
                else 
                    HumanoidRootPart.CFrame = Pos + Vector3.new(0, Distance, 0)
                end 
            end 
        end 
    end 
})

task.wait(0.1)
Settings:AddSlider({
    Name = "Tween Speed",
    Value = 450,
    Min = 100,
    Max = 600,
    Flag = "Tween",
    Callback = function(State)
        TweenSpeed = State 
    end 
})

task.wait(0.1)
Settings:AddSlider({
    Name = "Distance",
    Value = 35,
    Min = 0,
    Max = 100,
    Flag = "Distance",
    Callback = function(State)
        Distance = State 
    end 
})

task.wait(0.1)
BossStatus:AddLabel(All)
BossStatus:AddLabel(All)
BossStatus:AddLabel(All)
BossLabel = BossStatus:AddLabel(All)
BossStatus:AddLabel(All)
BossStatus:AddLabel(All)
BossStatus:AddLabel(All)

task.wait(0.1)
Aura:AddToggle({
    Name = "Kill Aura",
    Value = false,
    Flag = "KillAura",
    Callback = function(State)
        OTPRMDL = State 
        while OTPRMDL and IsOpen() do 
            KillAuraReady = true 
            Bindable.Event:Wait()
            task.wait(0.2) 
            repeat task.wait() until Combo.Value < 1
            for i = 1, 4 do FireAttack(i) end FireAttack(919)
            for i = 1, 4 do FireAttack(i) end FireAttack(919)
            for i = 1, 4 do FireAttack(i) end FireAttack(919)
            InvokeAttack(1)
            task.wait(0.2)
            KillAuraReady = false 
            task.wait(0.6)
        end 
    end 
})

task.wait(0.1)
Aura:AddDropdown({
    Name = "Weapon",
    List = {"Scythe", "Sword", "Claw", "Fans", "Fist"},
    Nothing = "Select Weapon..",
    Flag = "Weapon",
    Callback = function(State)
        if State == "Fist" then 
            Method = "kick"
        else 
            Method = "ground_slash"
        end 
        SelectedWeapon = Weapons[State]
    end    
})

Aura:AddToggle({
    Name = "Arrow KillAura",
    Value = false,
    Flag = "Arrow",
    Callback = function(State)
        Arrow = State 
        while Arrow and IsOpen() do 
            pcall(function()
                Handle_Initiate_S:FireServer("skil_ting_asd", Player, "arrow_knock_back", 5)
                for i = 1, 25 do
                    local Data = GetClosestMob() 
                    local Mob = Data[3]
                    local CF = Data[1]
                    if CF and IsOpen() and Arrow then 
                        Handle_Initiate_S:FireServer("arrow_knock_back_damage", Character, CF, Mob, 200, 200)
                    end
                    task.wait(1)
                end 
            end)
        end 
    end 
})

Aura:AddToggle({
    Name = "Koketsu Arrow KillAura",
    Value = false,
    Flag = "Arrow2",
    Callback = function(State)
        Arrow2 = State 
        while Arrow2 and IsOpen() do 
            Handle_Initiate_S:FireServer("skil_ting_asd", Player, "arrow_knock_back", 5)
            for i = 1, 25 do
                local Data = GetClosestMob() 
                local Mob = Data[3]
                if Mob and Arrow2 and IsOpen() then 
                    Handle_Initiate_S:FireServer("Arrow_knock_back_throw", Player, HumanoidRootPart, HumanoidRootPart.CFrame + Vector3.new(0, Y or 1, 0))
                    local Part = Debree:WaitForChild(Player.Name.."'s arrow")
                    local Damage = Part:FindFirstChild("Damagething")
                    Handle_Initiate_S:FireServer("Koketsu_arrow_damage", Character, Part, HumanoidRootPart.CFrame, Mob)
                    spawn(function()
                        while Damage.Parent and IsOpen() do 
                            Damage:FireServer()                      
                        end 
                    end)
                end 
                task.wait(1)
            end 
        end 
    end 
}) 

Aura:AddButton({
    Name = "Bring All (Closest)",
    Callback = function()
        Handle_Initiate_S_:InvokeServer("skil_ting_asd", Player, "arrow_knock_back", 5)
        Handle_Initiate_S_:InvokeServer("Arrow_knock_back_throw", Player, HumanoidRootPart, HumanoidRootPart.CFrame + Vector3.new(0, Y or 1, 0))
        local Part = Debree:WaitForChild(Player.Name.."'s arrow")
        for i,v in next, Players:GetPlayers() do
            if v == Player then continue end
            Handle_Initiate_S:FireServer("Koketsu_arrow_damage", Character, Part, HumanoidRootPart.CFrame, v.Character)
        end 
    end 
})

task.wait(0.1)
local MapToUse = game.PlaceId == 6152116144 and Map1 or Map2 
Teleports:AddButton({
    Name = "Teleport To",
    Callback = function()
        local Place = MapToUse[SelectedArea] 
        local Magnitude = Place and (HumanoidRootPart.Position - Vector3.new(Place.X, Place.Y, Place.Z)).Magnitude 
        if Magnitude then 
            Teleporting = true 
            local Cur = TweenService:Create(HumanoidRootPart, TweenInfo.new(Magnitude / TweenSpeed, Linear), {CFrame = MapToUse[SelectedArea] + Vector3.new(0, 5, 0)})
            Cur:Play() 
            Cur.Completed:Wait()
            Teleporting = false 
        end 
    end 
})

task.wait(0.1)
if game.PlaceId == 6152116144 then 
    Teleports:AddDropdown({
        Name = "Locations",
        Nothing = "Select Location..",
        Flag = "Map1",
        List = Map1List, 
        Callback = function(State)
            SelectedArea = State 
        end 
    }) 
else 
    Teleports:AddDropdown({
        Name = "Locations",
        Nothing = "Select Location..",
        Flag = "Map2",
        List = Map2List, 
        Callback = function(State)
            SelectedArea = State 
        end 
    }) 
end 

task.wait(0.1)
local LastTween = {Pause = function() end}

Teleports:AddButton({
    Name = "Instant Teleport Muzan",
    Callback = function()
        local Muzan = game:GetService("Workspace").Muzan
        local SpawnPosition = Muzan.SpawnPos.Value
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(SpawnPosition)     
    end 
})

Teleports:AddButton({
    Name = "Teleport Muzan",
    Callback = function()
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character
        local HumanoidRootPart = Character.HumanoidRootPart
        local Muzan = game:GetService("Workspace").Muzan
        local TeleportSpeed = 450
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

Teleports:AddToggle({
    Name = "Spider Lilly",
    Value = false, 
    Flag = "Lilly",
    Callback = function(State)
        SKTIEP = State 
        while SKTIEP and IsOpen() do -- bugged flowers = gay
            local Data = GetClosestFlower() 
            local Pos = Data[1]
            local Dist = Data[2]
            local Prox = Data[3]  
            local Flower = Data[4]
            if Pos then
                if Prox then 
                    fireproximityprompt(Prox)  
                end 
                LastTween:Pause()
                LastTween = TweenService:Create(HumanoidRootPart, TweenInfo.new(Dist / TweenSpeed, Linear), {CFrame = Pos})
                LastTween:Play()
            end 
        end 
    end 
})

MiscTroll:AddButton({
Name = "No More | Menu",
Callback = function()
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

MiscTroll:AddToggle({
    Name = "Rainbow Skin",
    Value = false,
    Flag = "RainbowSkin",
    Callback = toggleScript
})

MiscTroll:AddToggle({
    Name = "Auto Daily Spin",
    Value = false, 
    Flag = "LifeKill",
    Callback = function(bool)
        spinning = bool
        if spinning then
            while spinning do
                wait()
                game:GetService("ReplicatedStorage"):WaitForChild("spins_thing_remote"):InvokeServer()
            end
        end
    end 
})

local playerName = game.Players.LocalPlayer.Name

local function changeValue(instance, value)
    local args = {"Change_Value", instance, value}
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
end

MiscTroll:AddColorpicker {
    Name = "Skin Color",
    Callback = function(NewValue, LastValue)
        local r = NewValue.R
        local g = NewValue.G
        local b = NewValue.B
        local skinColor = game:GetService("ReplicatedStorage").Player_Data[playerName].Customization.Skin_Color
        changeValue(skinColor.R, r)
        changeValue(skinColor.G, g)
        changeValue(skinColor.B, b)
    end
}

task.wait(0.1)
ClanLabel = Info:AddLabel(All)
SpinLabel = Info:AddLabel(All)
RaceLabel = Info:AddLabel(All)
BreathingLabel = Info:AddLabel(All)
DemonLabel = Info:AddLabel(All)

AutoThings:AddToggle({
    Name = "Auto Reduce Life | For Soyama",
    Value = false, 
    Flag = "LifeKill",
    Callback = function(State)
        ReduceLife = State 
        while ReduceLife do 
            task.wait(0.25)
            Humanoid.Health = 50
        end 
    end 
})

AutoThings:AddToggle({
    Name = "Auto Loot Chests",
    Value = false, 
    Flag = "Loot",
    Callback = function(State)
        OSTPRKGL = State 
    end 
})

AutoThings:AddToggle({
    Name = "Auto Eat Souls",
    Value = false,
    Flag = "Souls",
    Callback = function(State)
        PRMFLDS = State 
    end 
})

AutoThings:AddToggle({
    Name = "Auto Collect Orbs",
    Value = false, 
    Flag = "AutoOrb",
    Callback = function(State)
        LIPJRMAL = State 
        while LIPJRMAL and IsOpen() do 
            for i,v in next, Map:GetChildren() do -- orbs were being autistic and childadded on map outside of ouw = 3fps
                if v:IsA("Model") and v:FindFirstChild("Sound") and (not v.Name:match("Insta")) then 
                    for i1,v1 in next, v:GetChildren() do 
                        if v1:FindFirstChild("TouchInterest") then 
                            v:PivotTo(HumanoidRootPart.CFrame)
                        end 
                    end 
                end 
            end 
            task.wait(0.5)
        end 
    end 
})

local Formatted = ("%svs"):format(Player.Name)
AutoThings:AddToggle({
    Name = "Auto Clash | Instant",
    Value = false, 
    Flag = "AutoClashInsta",
    Callback = function(State)
        LRIEPMFLA = State 
        while LRIEPMFLA and IsOpen() do -- what the fuck is this
            local ClashFolder = Debree:FindFirstChild("clash_folder") 
            if ClashFolder then 
                for i,v in next, ClashFolder:GetChildren() do 
                    if v.Name:find(Formatted) then 
                        local Points = v:FindFirstChild(Player.Name) 
                        if not Points then continue end 
                        spawn(function()
                            task.wait(7.5) 
                            Handle_Initiate_S:FireServer("Change_Value", Points, 99999999999)
                        end)
                    else 
                        for i1,Points in next, v:GetChildren() do 
                            if Players:FindFirstChild(Points.Name) then 
                                spawn(function()
                                    task.wait(7.5) 
                                    Handle_Initiate_S:FireServer("Change_Value", Points, 99999999999)
                                end)
                            end 
                        end 
                    end 
                end 
            end 
            local Found = Clashing:FindFirstChild(Player.Name)
            local Points = Found and Found:FindFirstChild("Points") 
            if Points then
                Handle_Initiate_S:FireServer("Change_Value", Points, 99999999999)  
            end 
        end 
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

AutoThings:AddToggle({
    Name = "Auto Clash",
    Value = false,
    Flag = "AutoClash",
    Callback = function(Value)
        clash = Value
        if clash then
            instanced()
        end
    end 
})

ToggleGod = MiscMain:AddToggle({
    Name = "Regeneration | Kamado",
    Value = false,
    Flag = "Regen",
    Callback = function(State) 
        if CClan ~= "Kamado" then ToggleGod:Set(false) return end
        KamadoHeal:FireServer(State)
        KamadoHeal:FireServer(State)
    end 
})

ToggleSpeed = MiscMain:AddToggle({
    Name = "Godspeed | Human",
    Value = false,
    Flag = "GodSpeed",
    Callback = function(State)
        if RRace == "Demon" then ToggleSpeed:Set(false) return end
        GodSpeed:FireServer(State)
    end 
})

ToggleAblaze = MiscMain:AddToggle({
    Name = "Heart Ablaze | Human",
    Value = false,
    Flag = "Heart Ablaze",
    Callback = function(State)
        if RRace == "Demon" then ToggleAblaze:Set(false) return end
        HeartAblaze:FireServer(State)
    end 
})

MiscMain:AddToggle({
    Name = "Breathing Regen | Any",
    Value = false,
    Flag = "BreathRegen",
    Callback = function(state)
        if state then
            game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(true)
        else
            game:GetService("ReplicatedStorage").Remotes.regeneration_breathing_remote:FireServer(false)
        end
    end 
})

MiscMain:AddToggle({
    Name = "War Drums | Any",
    Value = false, 
    Flag = "WarDrums",
    Callback = function(State)
        TLROAPSMG = State 
        while TLROAPSMG and IsOpen() do 
            DrumRemote:FireServer(true)
            task.wait(20.1)
        end     
    end 
})

MiscMain:AddToggle({
    Name = "Furiosity | Any",
    Value = false, 
    Flag = "Furiosity",
    Callback = function(State)
        OHSAGIASGL = State 
        while OHSAGIASGL and IsOpen() do
            local Count = (CClan == "Soyama" and 7) or 3 
            for i = 1, Count do  
                Furiosity:FireServer(true) 
                repeat task.wait() until FuriosityDisplay.Visible 
                repeat task.wait() until not FuriosityDisplay.Visible  
            end 
            repeat task.wait() until Player:FindFirstChild("hacktanbgasd12312312").Value < 1 
        end 
    end 
})

MiscMain:AddToggle({
    Name = "Infinite Stamina | Any",
    Value = false,
    Flag = "Stamina",
    Callback = function(State)
        IGORTMDL = State 
        while IGORTMDL and IsOpen() do 
            RG:Stamina(-5)
        end 
    end 
})

MiscMain:AddToggle({
    Name = "Infinite Breathing | Any",
    Value = false,
    Flag = "Breath",
    Callback = function(State)
        TEKFOGP = State 
        while TEKFOGP and IsOpen() do 
            RG:Breath(-5)
        end 
    end 
})

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

SkillMisc:AddToggle({
    Name = "Auto Skill",
    Value = false,
    Flag = "AutoSkill",
    Callback = function(t)
        getgenv().AutoUseSkills = t
    end 
})

SkillMisc:AddToggle({
    Name = "Z Move",
    Value = false,
    Flag = "ZMove",
    Callback = function(t)
        getgenv().ZMove = t
    end 
})

SkillMisc:AddToggle({
    Name = "X Move",
    Value = false,
    Flag = "XMove",
    Callback = function(t)
        getgenv().XMove = t
    end 
})
 
SkillMisc:AddToggle({
    Name = "C Move",
    Value = false,
    Flag = "CMove",
    Callback = function(t)
        getgenv().CMove = t
    end 
})
 
SkillMisc:AddToggle({
    Name = "V Move",
    Value = false,
    Flag = "VMove",
    Callback = function(t)
        getgenv().VMove = t
    end 
})

SkillMisc:AddToggle({
    Name = "B Move",
    Value = false,
    Flag = "BMove",
    Callback = function(t)
        getgenv().BMove = t
    end 
})

SkillMisc:AddToggle({
    Name = "N Move",
    Value = false,
    Flag = "NMove",
    Callback = function(t)
        getgenv().NMove = t
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

local shouldTeleport = false
AutoThings:AddToggle({
    Name = "Auto Rejoin Menu",
    Value = false,
    Flag = "AutoRejoinM",
    Callback = function(Value)
        shouldTeleport = Value
    end 
})

Things:AddToggle({
    Name = "Disable 3D Rendering",
    Value = false,
    Flag = "3DR",
    Callback = function(State)
        game:GetService("RunService"):Set3dRenderingEnabled(not State)
    end 
})

local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
local performanceBackup = {}

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

Things:AddToggle({
    Name = "Performance Mode",
    Value = false,
    Flag = "PerformaceMode",
    Callback = function(state)
        if state then
            EnablePerformanceMode()
        else
            DisablePerformanceMode()
        end
    end 
})

local mapFolder = game:GetService("Workspace"):FindFirstChild("Map")
local backup = {}  
local isDeleting = false  
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
    Things:AddToggle({
        Name = "Map Delete",
        Value = false,
        Flag = "MapDeleter",
        Callback = function(state)
        ToggleMapObjects(state)
        end
    })
else
    warn("Map Not Found")
end

spawn(function()
    while task.wait() do
        if getgenv().AutoSplitBoulder then
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["boulder_split_ui"].Holder.LocalScript.Value.Value = 10000
            end)
        end
    end
   end)
 
   spawn(function()
    while task.wait() do
        if getgenv().AutoMeditate then
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["Meditate_gui"].Holder.LocalScript.Value.Value = 100
            end)
        end
    end
   end)
 
   spawn(function()
    while task.wait() do
        if getgenv().AutoPushUps then
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["Push_Up_Gui"].Holder.push_up_mat_local_script.Value.Value = 1000
            end)
        end
    end
   end)
 
   spawn(function()
    while task.wait() do
        if getgenv().AutoCupGame then
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["cup_game_gui"].Holder.cup_game_script123.Value.Value = 1000
            end)
        end
    end
   end)
 
   spawn(function()
    while task.wait() do
        if getgenv().AutoTarget then
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.ExcessGuis["chairui"].Holder.LocalScript.Value.Value = 1000
            end)
        end
    end
   end)

   AutoThings:AddToggle({
    Name = "Auto Split Boulder",
    Value = false,
    Flag = "AutoSplit",
    Callback = function(t)
        getgenv().AutoSplitBoulder = t
    end 
})

MiscMisc:AddToggle({
    Name = "Auto Gourd",
    Value = false,
    Flag = "AutoGourd",
    Callback = function(t)
        getgenv().AutoBlowGourd = v
    end 
})

getgenv().GourdSelect = "Small Gourd"
MiscMisc:AddDropdown({
    Name = "Gourd Type",
    List = { 'Small Gourd', 'Medium Gourd', 'Big Gourd' }, 
    Flag = "AutoGourdType",
    Nothing = "Select Gourd",
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
                wait(1)
                invokeServer("change_equip_for_item", LocalPlayer.Name, Data.Inventory, Data.Inventory.Items:FindFirstChild("Big Gourd"))
                wait(1)
                for _, v in pairs(LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Big Gourd" then
                        v.Parent = LocalPlayer.Character
                    end
                end
                wait(1)
 
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
                wait(1)
                invokeServer("change_equip_for_item", LocalPlayer.Name, Data.Inventory, Data.Inventory.Items:FindFirstChild("Medium Gourd"))
                wait(1)
                for _, v in pairs(LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Medium Gourd" then
                        v.Parent = LocalPlayer.Character
                    end
                end
                wait(1)
 
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
                wait(1)
                invokeServer("change_equip_for_item", LocalPlayer.Name, Data.Inventory, Data.Inventory.Items:FindFirstChild("Small Gourd"))
                wait(1)
                for _, v in pairs(LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Small Gourd" then
                        v.Parent = LocalPlayer.Character
                    end
                end
                wait(1)
 
                while true do
                    local SmallGourd = LocalPlayer.Character:FindFirstChild("Small Gourd")
                    if SmallGourd then
                        invokeServer("blow_in_gourd_thing", LocalPlayer, SmallGourd, 1)
                    else
                        break
                    end
                    wait()
                end
            end
        end
        wait()
    end
 end)

 AutoThings:AddToggle({
    Name = "Auto Push Ups",
    Value = false,
    Flag = "AutoPush",
    Callback = function(t)
        getgenv().AutoPushUps = t
    end 
})

AutoThings:AddToggle({
    Name = "Auto Meditate",
    Value = false,
    Flag = "AutoMeditate",
    Callback = function(t)
        getgenv().AutoMeditate = t
    end 
})

AutoThings:AddToggle({
    Name = "Auto Cup Game",
    Value = false,
    Flag = "AutoCupGame",
    Callback = function(t)
        getgenv().AutoCupGame = t
    end 
})

AutoThings:AddToggle({
    Name = "Auto Target",
    Value = false,
    Flag = "AutoTarget",
    Callback = function(t)
        getgenv().AutoTarget = t
    end 
})

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

 Things:AddToggle({
    Name = "No Drown",
    Value = false,
    Flag = "NoDrown",
    Callback = function(t)
        getgenv().NoDrown = t
    end 
})

Things:AddToggle({
    Name = "Chat Logger",
    Value = false,
    Flag = "ChatLog",
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

Things:AddToggle({
    Name = "Stop Mouse Click",
    Value = false,
    Flag = "StopMouse",
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

Things:AddToggle({
    Name = "No Cooldown Skill | Kickable",
    Value = false,
    Flag = "SkillNoCD",
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

MiscMisc:AddSlider({
    Name = "WalkSpeed",
    Value = 16,
    Min = 16,
    Max = 300,
    Flag = "WalkSpeed",
    Callback = function(State)
        WalkSpeed = State 
    end 
})

MiscMisc:AddSlider({
    Name = "JumpPower",
    Value = 50,
    Min = 50,
    Max = 1000,
    Flag = "JumpPower",
    Callback = function(State)
        JumpPower = State 
    end 
})

MiscMisc:AddButton({
    Name = "Remove NPCs Block (Test)",
    Callback = function()
        game.Workspace.Mobs.DescendantAdded:Connect(function(c)
            if c.Name == "Blocking" then 
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer("remove_blocking", c.Parent)
            end
        end)        
    end 
})

MiscMisc:AddButton({
    Name = "Server Hop",
    Callback = function()
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
    end 
})

MiscMisc:AddButton({
    Name = "Reset",
    Callback = function()
        Humanoid.Health = 0 
        task.wait(0.5)
        Humanoid.Health = 0
    end 
})

MiscMisc:AddButton({
    Name = "Gamepass Unlocker",
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
    end 
})

for i,v in next, getconnections(Player.Idled) do v:Disable() end 
