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

-- Script principal de farm
loadstring(game:HttpGet("https://raw.githubusercontent.com/SNSDARK/Scripts/refs/heads/main/Deadly%20Delivery.lua"))()

-- Esperar a que el script principal termine de cargar
task.wait(10)

-- Script para recoger items
loadstring(game:HttpGet("https://raw.githubusercontent.com/Crazylxrdx/Deadly-Delivery-scriptnew/refs/heads/main/Items.lua"))()