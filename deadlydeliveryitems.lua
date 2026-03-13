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
getgenv().LootDelay = 0.3

task.spawn(function()

    local player = game.Players.LocalPlayer

    while getgenv().AutoLoot do
        task.wait(1)

        local char = player.Character
        if not char then continue end

        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        local originalPosition = root.CFrame

        for _,prompt in pairs(workspace:GetDescendants()) do

            if prompt:IsA("ProximityPrompt") then

                local parent = prompt.Parent
                local part

                if parent:IsA("BasePart") then
                    part = parent
                elseif parent.Parent and parent.Parent:IsA("BasePart") then
                    part = parent.Parent
                end

                if part then

                    pcall(function()

                        root.CFrame = part.CFrame + Vector3.new(0,3,0)

                        task.wait(0.15)

                        fireproximityprompt(prompt, prompt.HoldDuration)

                        task.wait(getgenv().LootDelay)

                    end)

                end

            end

        end

        root.CFrame = originalPosition

    end

end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/SNSDARK/Scripts/refs/heads/main/Deadly%20Delivery.lua"))()