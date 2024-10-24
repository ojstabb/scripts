-- LuckyBlockBattlegrounds

if game.PlaceId == 662417684 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Eclipse Hub | ❓ Lucky Blocks Battlegrounds", HidePremium = false, IntroText = "Eclipse Hub", SaveConfig = true, ConfigFolder = "Orion"})
    
    -- initial notification
    OrionLib:MakeNotification({
        Name = "Eclipse Hub",
        Content = "All Scripts Are Licensed Under OJStab and Execrated via DMCA.",
        Image = "rbxassetid://122310866083950",
        Time = 5
    })
    
    -- local vars
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    
    -- local lists

    
    -- lucky blocks tab
    
    local BlocksTab = Window:MakeTab({
        Name = "Lucky Blocks",
        Icon = "rbxassetid://111980637312133",
        PremiumOnly = false
    })
    
    -- add the section in the tab
    local LuckyBlocksSection = BlocksTab:AddSection({
        Name = "Lucky Blocks"
    })

    LuckyBlocksSection:AddButton({
        Name = "Common Lucky Block",
        Callback = function()
            game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
        end
    })

    LuckyBlocksSection:AddButton({
        Name = "Super Lucky Block",
        Callback = function()
            game.ReplicatedStorage.SpawnSuperBlock:FireServer()
        end
    })

    LuckyBlocksSection:AddButton({
        Name = "Diamond Lucky Block",
        Callback = function()
            game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
        end
    })

    LuckyBlocksSection:AddButton({
        Name = "Rainbow Lucky Block",
        Callback = function()
            game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
        end
    })

    LuckyBlocksSection:AddButton({
        Name = "Galaxy Lucky Block",
        Callback = function()
            game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
        end
    })

    -- teleports tab

    local TeleportsTab = Window:MakeTab({
        Name = "Teleports",
        Icon = "rbxassetid://74279778290675",
        PremiumOnly = false
    })

    -- bridge tp

    local BridgeTeleportsSection = TeleportsTab:AddSection({
        Name = "Bridge Teleports"
    })

    BridgeTeleportsSection:AddButton({
        Name = "Light Blue Bridge",
        Callback = function()
            humanoidRootPart.CFrame = CFrame.new(-1214, 193, -23.5)
        end
    })

    BridgeTeleportsSection:AddButton({
        Name = "Dark Blue Bridge",
        Callback = function()
            humanoidRootPart.CFrame = CFrame.new(-1214, 193, 204)
        end
    })

    BridgeTeleportsSection:AddButton({
        Name = "Red Bridge",
        Callback = function()
            humanoidRootPart.CFrame = CFrame.new(-1155, 193, 262)
        end
    })

    BridgeTeleportsSection:AddButton({
        Name = "Purple Bridge",
        Callback = function()
            humanoidRootPart.CFrame = CFrame.new(-927, 193, 262)
        end
    })

    BridgeTeleportsSection:AddButton({
        Name = "Pink Bridge",
        Callback = function()
            humanoidRootPart.CFrame = CFrame.new(-869, 193, 205)
        end
    })

    BridgeTeleportsSection:AddButton({
        Name = "Orange Bridge",
        Callback = function()
            humanoidRootPart.CFrame = CFrame.new(-870, 193, -22)
        end
    })

    BridgeTeleportsSection:AddButton({
        Name = "Yellow Bridge",
        Callback = function()
            humanoidRootPart.CFrame = CFrame.new(-926, 193, -79)
        end
    })

    BridgeTeleportsSection:AddButton({
        Name = "Green Bridge",
        Callback = function()
            humanoidRootPart.CFrame = CFrame.new(-1154, 193, -80)
        end
    })

    -- settings tab
    
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
