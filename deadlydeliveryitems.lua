--Webhook for the script (Optional)
getgenv().WebhookURL = ""

getgenv().ScriptConfig = {
    SellAll = true,
    LockFoodAbove = 0,
    MinFoodPrice = 0,
    FloorLimit = 41,
    LobbySize = 1,
    LobbyFriendsOnly = true,
    PickupAttempts = 5,
    InteractCooldown = 0.1,
    StatusMenu = true,
    HideFood = 100,
    WaitBeforeVote = 0.1,
    WalkSpeed = 30
}

--AUTO LOOT SETTINGS
getgenv().AutoLoot = true
getgenv().LootDelay = 0.2

task.spawn(function()

    local player = game.Players.LocalPlayer

    while getgenv().AutoLoot do
        task.wait(1)

        local char = player.Character
        if not char then continue end

        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        local originalPosition = root.CFrame

        for _,v in pairs(workspace:GetDescendants()) do

            if v:IsA("ProximityPrompt") then

                local part = v.Parent

                if part and part:IsA("BasePart") then

                    pcall(function()

                        --teleport to item
                        root.CFrame = part.CFrame + Vector3.new(0,3,0)

                        task.wait(0.1)

                        --pickup
                        fireproximityprompt(v)

                        task.wait(getgenv().LootDelay)

                    end)

                end

            end

        end

        --return to original position
        root.CFrame = originalPosition

    end

end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/SNSDARK/Scripts/refs/heads/main/Deadly%20Delivery.lua"))()