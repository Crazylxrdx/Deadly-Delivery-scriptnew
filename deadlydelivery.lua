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

loadstring(game:HttpGet("https://github.com/Crazylxrdx/Deadly-Delivery-scriptnew/blob/main/deadlydelivery.lua"))()