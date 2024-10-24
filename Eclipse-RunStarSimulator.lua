-- RunStar Simulator

if game.PlaceId == 12996550309 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Eclipse Hub | RunStar Simulator", HidePremium = false, IntroText = "Eclipse Hub", SaveConfig = true, ConfigFolder = "Orion"})
    
    -- initial notification
    OrionLib:MakeNotification({
        Name = "Eclipse Hub",
        Content = "All Scripts Are Licensed Under OJStab and Execrated via DMCA.",
        Image = "rbxassetid://122310866083950",
        Time = 5
    })
    
    -- local vars
    local isFarmingWins = false
    local selectedTreadmillValue = nil
    local isFarmingTread = false
    local selectedEggValue = nil
    local isAutoHatching = false
    local isEquippingBest = false
    
    -- local lists
    local TreadList = {
        -- world 1
        ["+1/s Treadmill"] = "1",
        ["+5/s Treadmill"] = "2",
        ["+10/s Treadmill"] = "3",
        ["+20/s Treadmill"] = "4",
        ["+25/s Treadmill"] = "5",
        ["+30/s Treadmill"] = "6",
        -- world 2
        ["+40/s Treadmill"] = "8",
        ["+60/s Treadmill"] = "9",
        ["+80/s Treadmill"] = "10",
        ["+100/s Treadmill"] = "11",
        ["+150/s Treadmill"] = "12",
        ["+200/s Treadmill"] = "13",
        -- world 3
        ["+1,000/s Treadmill"] = "15",
        ["+1,400/s Treadmill"] = "16",
        ["+1,800/s Treadmill"] = "17",
        ["+2,200/s Treadmill"] = "18",
        ["+2,600/s Treadmill"] = "19",
        ["+3,000/s Treadmill"] = "20",
        -- vip
        ["+30/s VIP Treadmill"] = "7",
        ["+120/s VIP Treadmill"] = "14",
        ["+2,000/s VIP Treadmill"] = "21",
    }

    local Eggs = {
        ["Common Egg"] = 1,
        ["Uncommon Egg"] = 2,
        ["Rare Egg"] = 3,
        ["Epic Egg"] = 4,
        ["Armor Egg"] = 5,
        ["Pustule Egg"] = 6,
        ["Bull Egg"] = 7,
        ["Venom Egg"] = 8,
        ["Demon Egg"] = 9,
        ["Mechanical Egg"] = 10,
        ["Cyber Common Egg"] = 11,
        ["Cyber Uncommon Egg"] = 12,
        ["Cyber Rare Egg"] = 13,
        ["Cyber Epic Egg"] = 14,
        ["Cyber Legendary Egg"] = 15,
        ["Cyber Mythic Egg"] = 16,
    }
    
    -- farm tab
    
    local FarmTab = Window:MakeTab({
        Name = "Farm",
        Icon = "rbxassetid://120952600342762",
        PremiumOnly = false
    })
    
    -- add the section in the tab
    local WinFarmSection = FarmTab:AddSection({
        Name = "Win Farms"
    })

    WinFarmSection:AddToggle({
        Name = "Farm Wins | World 1",
        Default = false,
        Callback = function(Value)
            isFarmingWins = Value
            while isFarmingWins do 
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RacePrepare"):InvokeServer()
                wait()
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RaceStart"):FireServer()
                wait()
                local args = {
                    [1] = 1
                }
    
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RaceEnd"):InvokeServer(unpack(args))
                wait()
                local args = {
                    [1] = true,
                    [2] = 1,
                    [3] = 1
                }
                
                game:GetService("ReplicatedStorage").Remotes.Race.RaceReward:FireServer(unpack(args))
                wait()
            end    
        end    
    })

    WinFarmSection:AddToggle({
        Name = "Farm Wins | World 2",
        Default = false,
        Callback = function(Value)
            isFarmingWins = Value
            while isFarmingWins do 
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RacePrepare"):InvokeServer()
                wait()
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RaceStart"):FireServer()
                wait()
                local args = {
                    [1] = 1
                }
    
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RaceEnd"):InvokeServer(unpack(args))
                wait()
                local args = {
                    [1] = true,
                    [2] = 2,
                    [3] = 1
                }
                
                game:GetService("ReplicatedStorage").Remotes.Race.RaceReward:FireServer(unpack(args))
                wait()
            end    
        end    
    })

    WinFarmSection:AddToggle({
        Name = "Farm Wins | World 3",
        Default = false,
        Callback = function(Value)
            isFarmingWins = Value
            while isFarmingWins do 
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RacePrepare"):InvokeServer()
                wait()
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RaceStart"):FireServer()
                wait()
                local args = {
                    [1] = 1
                }
    
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Race"):WaitForChild("RaceEnd"):InvokeServer(unpack(args))
                wait()
                local args = {
                    [1] = true,
                    [2] = 3,
                    [3] = 1
                }
                
                game:GetService("ReplicatedStorage").Remotes.Race.RaceReward:FireServer(unpack(args))
                wait()
            end    
        end    
    })

    local SpeedFarmSection = FarmTab:AddSection({
        Name = "Speed Farms"
    })
    
    SpeedFarmSection:AddToggle({
        Name = "Start Farming | Farms The Selected Treadmill",
        Default = false,    
        Callback = function(Value)
            isFarmingTread = Value
            while isFarmingTread do
                if selectedTreadmillValue then
                    local args = {
                        [1] = selectedTreadmillValue,
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Train"):WaitForChild("AddSpeed"):FireServer(unpack(args))
                end
                wait()
            end
        end
    })
    
    SpeedFarmSection:AddDropdown({
        Name = "Select Treadmill (MUST BE UNLOCKED!)",
        Default = "1",
        Options = {
            "World 1 (Placeholder: Do Not Select)",
            "+1/s Treadmill",
            "+5/s Treadmill",
            "+10/s Treadmill",
            "+20/s Treadmill",
            "+25/s Treadmill",
            "+30/s Treadmill",
            "World 1 (Placeholder: Do Not Select)",
            "+40/s Treadmill",
            "+60/s Treadmill",
            "+80/s Treadmill",
            "+100/s Treadmill",
            "+150/s Treadmill",
            "+200/s Treadmill",
            "World 2 (Placeholder: Do Not Select)",
            "+1,000/s Treadmill",
            "+1,400/s Treadmill",
            "+1,800/s Treadmill",
            "+2,200/s Treadmill",
            "+2,600/s Treadmill",
            "+3,000/s Treadmill",
            "VIP Treadmills (Placeholder: Do Not Select | Must Have Gamepass)",
            "+30/s VIP Treadmill",
            "+120/s VIP Treadmill",
            "+2,000/s VIP Treadmill",
        },
        Callback = function(Value)
            print(Value)
            selectedTreadmillValue = TreadList[Value]
        end    
    })
    
    -- Pet Tab --
    local PetTab = Window:MakeTab({
        Name = "Pets",
        Icon = "rbxassetid://116759427393320",
        PremiumOnly = false
    })

    local PetSection = PetTab:AddSection({
        Name = "Pet Settings"
    })

    PetSection:AddDropdown({
        Name = "Select The Egg You Want To Auto Hatch",
        Default = "1",
        Options = {
            "Common Egg",
            "Uncommon Egg",
            "Rare Egg",
            "Epic Egg",
            "Armor Egg",
            "Pustule Egg",
            "Bull Egg",
            "Venom Egg",
            "Demon Egg",
            "Mechanical Egg",
            "Cyber Common Egg",
            "Cyber Uncommon Egg",
            "Cyber Rare Egg",
            "Cyber Epic Egg",
            "Cyber Legendary Egg",
            "Cyber Mythic Egg",
        },
        Callback = function(Value)
            selectedEggValue = Eggs[Value]
            print(Value)
        end    
    })

    PetSection:AddToggle({
        Name = "Auto Hatches The Selected Egg",
        Default = false,    
        Callback = function(Value)
            isAutoHatching = Value
            while isAutoHatching do
                if selectedEggValue then
                    local args = {
                        [1] = selectedEggValue,
                        [2] = "Open1",
                        [3] = {}
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(unpack(args))

                end
                wait()
            end    
        end
    })

    PetSection:AddToggle({
        Name = "Auto Equip Best",
        Default = false,    
        Callback = function(Value)
            isEquippingBest = Value
            while isEquippingBest do
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Pets"):WaitForChild("EquipBest"):FireServer()
                wait()
            end
        end
    })
    
    -- Settings Tab --
    
    local SettingsTab = Window:MakeTab({
        Name = "Settings",
        Icon = "rbxassetid://71090395112463",
        PremiumOnly = false
    })
    
    local SettingsSection = SettingsTab:AddSection({
        Name = "Settings"
    })
    
    SettingsSection:AddButton({
        Name = "Destroy UI",
        Callback = function()
            OrionLib:Destroy()
        end    
    })
    
    OrionLib:Init() -- UI Lib End

end
