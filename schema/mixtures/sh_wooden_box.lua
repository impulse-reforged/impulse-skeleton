--[[
    MIXTURE EXAMPLE: Craft Wooden Box
    
    Mixtures (also called recipes) define how items are combined at benches.
    This recipe lets players craft a storage box from wood planks.
--]]

MIXTURE = {}

MIXTURE.Name = "Wooden Box" -- Name of what you're crafting
MIXTURE.Description = "A simple wooden storage box."
MIXTURE.Class = "craft_wooden_box" -- Unique identifier
MIXTURE.Bench = "workbench" -- Which bench is this recipe for?
MIXTURE.Time = 10 -- How long crafting takes (in seconds)

-- INGREDIENTS (Input)
-- Format: ["item_uniqueid"] = {take = amount, exact = false}
-- take = how many are consumed
-- exact = must have exactly this many (true) or at least this many (false)
MIXTURE.Input = {
    ["wood_plank"] = {take = 3, exact = false}, -- Requires at least 3 wood planks, takes 3
}

-- RESULTS (Output)
-- What you get when crafting succeeds
-- Format: ["item_uniqueid"] = {amount, chance}
-- chance is optional (0-100), defaults to 100 if not specified
MIXTURE.Output = {
    ["storage_box"] = {1, 100}, -- Get 1 storage box, 100% chance
}

-- Optional: Can this player use this recipe?
-- function MIXTURE:CanUse(client)
--     if client:GetSkillLevel("crafting") < 1 then
--         return false, "You need crafting skill level 1!"
--     end
--     return true
-- end

-- Optional: What happens when crafting starts?
-- function MIXTURE:OnStart(client)
--     client:Notify("You begin crafting a wooden box...")
-- end

-- Optional: What happens when crafting completes?
-- function MIXTURE:OnComplete(client)
--     client:Notify("You successfully crafted a wooden box!")
--     -- Maybe give XP?
--     -- client:AddXP(10)
-- end

impulse.Inventory:RegisterMixture(MIXTURE)
