--[[
    ITEM EXAMPLE: Wearable/Clothing

    This shows how to create a wearable item that changes the player's appearance.
    Note: This is a basic example - advanced clothing may require model/bodygroup changes.
--]]

ITEM = {}

ITEM.Name = "Winter Jacket"
ITEM.Description = "A warm winter jacket. Makes you look stylish!"
ITEM.Model = "models/props_c17/suitcase001a.mdl" -- World model when dropped
ITEM.Weight = 1.2
ITEM.UniqueID = "jacket_winter"

ITEM.Stackable = false
ITEM.Category = "Clothing"
ITEM.IsClothing = true -- Mark this as a clothing item

-- Optional: Define what happens when equipped
function ITEM:OnEquip(client, data, uid)
    -- Example: You could change player model, bodygroups, or just notify
    client:Notify("You put on the winter jacket.")

    -- Example of changing a bodygroup (if your player model supports it)
    -- client:SetBodygroup(1, 2)

    -- You could also apply armor or other effects
    -- client:SetArmor(client:Armor() + 10)
end

function ITEM:UnEquip(client)
    client:Notify("You take off the winter jacket.")

    -- Revert any changes made in OnEquip
    -- client:SetBodygroup(1, 0)
    -- client:SetArmor(math.max(0, client:Armor() - 10))
end

-- Optional: Prevent equipping if already wearing something
-- function ITEM:CanEquip(client)
--     if client.WearingJacket then
--         return false, "You're already wearing a jacket!"
--     end
--     return true
-- end

impulse.Inventory:RegisterItem(ITEM)
