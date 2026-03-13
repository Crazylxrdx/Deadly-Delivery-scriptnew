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

--farm script
loadstring(game:HttpGet("https://raw.githubusercontent.com/SNSDARK/Scripts/refs/heads/main/Deadly%20Delivery.lua"))()

--item auto pickup
loadstring(game:HttpGet("https://raw.githubusercontent.com/Crazylxrdx/Deadly-Delivery-scriptnew/refs/heads/main/Items.lua"))()