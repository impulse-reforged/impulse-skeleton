--[[
    ITEM EXAMPLE: Medical Item

    This item restores health when used.
    Shows how to check conditions before use.
--]]

ITEM = {}

ITEM.Name = "First Aid Kit"
ITEM.Description = "Contains bandages and basic medical supplies. Restores 50 health."
ITEM.Model = "models/items/healthkit.mdl"
ITEM.Weight = 1.0
ITEM.UniqueID = "medkit"

ITEM.Stackable = true
ITEM.Category = "Medical"

-- Check if the item can be used
function ITEM:CanUse(client)
    -- Don't allow use if player is at full health
    if client:Health() >= client:GetMaxHealth() then
        return false, "You are already at full health!"
    end

    return true
end

-- Use the item
function ITEM:OnUse(client)
    local healAmount = 50
    local newHealth = math.min(client:Health() + healAmount, client:GetMaxHealth())

    client:SetHealth(newHealth)
    client:EmitSound("items/medshot4.wav")
    client:Notify("You used a first aid kit and restored " .. healAmount .. " health.")

    return true -- Remove item after use
end

impulse.Inventory:RegisterItem(ITEM)
