--[[
    VENDOR EXAMPLE: General Store
    
    Vendors are NPCs that sell items to players.
    This creates a shop where players can buy basic supplies.
--]]

VENDOR = {}

VENDOR.Name = "General Store Clerk" -- Name of the NPC
VENDOR.Description = "Sells basic supplies and food." -- Description shown in UI
VENDOR.Model = "models/player/mossman.mdl" -- NPC model (if spawned as NPC)
VENDOR.UniqueID = "general_store" -- Unique identifier

-- ITEMS FOR SALE
-- Format: ["item_uniqueid"] = price
VENDOR.Items = {
    ["apple"] = 10, -- Apples cost $10
    ["medkit"] = 100, -- Medkits cost $100
    ["wood_plank"] = 25, -- Wood planks cost $25
}

-- Optional: Can this player use this vendor?
-- function VENDOR:CanUse(client)
--     if client:Team() == TEAM_BANDIT then
--         return false, "The shopkeeper refuses to serve you!"
--     end
--     return true
-- end

-- Optional: Customize the buy transaction
-- function VENDOR:OnBuy(client, item, price)
--     client:Notify("Thanks for your purchase!")
-- end

impulse.Vendor:Register(VENDOR)
