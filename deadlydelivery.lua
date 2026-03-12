--Webhook for the script (Optional)
getgenv().WebhookURL = ""
getgenv().ScriptConfig = {
    SellAll = true, -- Set to true unless you want to stop getting items next run
    LockFoodAbove = 0, -- Automatically Locks/Favorite Food greater than or equal to set number/price
    MinFoodPrice = 0 -- sets the minimum food to pick up, set to 0 to disable
    FloorLimit = 41, -- Max Floor to attempt
    LobbySize = 1, -- self explanatory
    LobbyFriendsOnly = true, -- self explanatory
    PickupAttempts = 5, -- Max amount of times before it gives up picking up the food, recommended lowest is 5
    InteractCooldown = 0.1, -- Cooldown between interaction/pickup, recommended lowest is 0.1
    StatusMenu = true, -- Enables the GUI when in dungeon for cleaner looks, press H to hide or tap the button on top right
    HideFood = 100, -- Hides food in the elevator that are under the value set, set to 0 to disable
    WaitBeforeVote = 0.1, -- Wait for (number) of second/s before voting.
    WalkSpeed = 30, -- Changes walkspeed when on dungeon, can only be modified once.
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Crazylxrdx/Deadly-Delivery-scriptnew/refs/heads/main/deadlydelivery.lua"))()