--Webhook
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

--ITEM PICKUP
getgenv().ItemPickup = {
    Enabled = true,
    Range = 25,

    Items = {
        "Flashlight",
        "Bandage",
        "Cardboard Box",
        "Revive Syringe",
        "Bloxy Cola",
        "Stun Grenade",
        "Baseball Bat",
        "Hourglass",
        "Teleporter",
        "Z-Ray Gun",
        "Bio-Scanner",
        "Shotgun Ammo"
    }
}

task.spawn(function()

    local player = game.Players.LocalPlayer

    while getgenv().ItemPickup.Enabled do
        task.wait(0.4)

        local char = player.Character
        if not char then continue end

        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        for _,obj in pairs(workspace:GetDescendants()) do

            if table.find(getgenv().ItemPickup.Items, obj.Name) then

                local prompt = obj:FindFirstChildOfClass("ProximityPrompt")

                if prompt then
                    local dist = (root.Position - obj.Position).Magnitude

                    if dist <= getgenv().ItemPickup.Range then
                        pcall(function()
                            fireproximityprompt(prompt)
                        end)
                    end
                end

            end
        end
    end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/SNSDARK/Scripts/refs/heads/main/Deadly%20Delivery.lua"))()