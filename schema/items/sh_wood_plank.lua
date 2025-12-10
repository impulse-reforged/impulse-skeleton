--[[
    ITEM EXAMPLE: Craftable Item (Material)
    
    This is a crafting material that can be used in recipes.
    It can't be used directly, only as an ingredient.
--]]

ITEM = {}

ITEM.Name = "Wood Plank"
ITEM.Description = "A sturdy wooden plank. Can be used for crafting."
ITEM.Model = "models/props_debris/wood_board04a.mdl"
ITEM.Weight = 2.0
ITEM.UniqueID = "wood_plank"

ITEM.Stackable = true
ITEM.Category = "Materials"
ITEM.DropOnDeath = false -- Materials might not drop on death

-- This item can't be used directly - it's only for crafting
-- If you don't define OnUse, the framework will show "Cannot use this item"

-- Optional: You can add a custom message
function ITEM:CanUse(client)
    return false, "This is a crafting material. Use it at a workbench!"
end

-- Optional: Add metadata to track item condition or quality
-- ITEM.MetaData = {
--     quality = "normal" -- Could be: poor, normal, good, excellent
-- }

impulse.Inventory:RegisterItem(ITEM)
