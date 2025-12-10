--[[
    ITEM EXAMPLE: Basic Consumable

    This is a simple food item that restores hunger when consumed.
    This is the most basic type of item you can create.
--]]

ITEM = {}

-- BASIC INFORMATION
ITEM.Name = "Apple" -- The name displayed in-game
ITEM.Description = "A fresh, crisp apple. Restores a small amount of hunger." -- Description shown to players
ITEM.Model = "models/props/cs_italy/orange.mdl" -- 3D model for the item (world model)
ITEM.Weight = 0.2 -- Weight in kilograms (affects inventory space)
ITEM.UniqueID = "apple" -- Must be unique! No two items can have the same UniqueID

-- ITEM BEHAVIOR
ITEM.Stackable = true -- Can multiple of this item stack in one inventory slot?
ITEM.DropOnDeath = true -- Does this item drop when the player dies?

-- FUNCTIONS
-- This function runs when the item is used
function ITEM:OnUse(client)
    -- Restore hunger (if hunger system is enabled)
    if impulse.Config.HungerEnabled and client.SetHunger then
        local currentHunger = client:GetHunger() or 0
        client:SetHunger(math.min(currentHunger + 15, 100)) -- Add 15 hunger, max 100
        client:Notify("You ate an apple and feel a bit less hungry.")
    else
        client:Notify("You ate a delicious apple!")
    end

    -- Play an eating sound
    client:EmitSound("npc/barnacle/barnacle_crunch2.wav")

    -- Remove the item after use
    return true -- Returning true removes the item
end

-- Optional: Can the item be used?
-- function ITEM:CanUse(client)
--     if client:Health() < 10 then
--         return false, "You're too weak to eat!"
--     end
--     return true
-- end

-- Register the item with the framework
impulse.Inventory:RegisterItem(ITEM)
