local ITEM = {}

ITEM.Name = "First Aid Kit"
ITEM.Desc = "Contains bandages and basic medical supplies. Restores 50 health."
ITEM.Model = "models/items/healthkit.mdl"
ITEM.Weight = 1
ITEM.UniqueID = "medkit"

ITEM.CanStack = true
ITEM.Category = "Medical"

function ITEM:OnUse(client)
    local current = client:Health()
    local maxHealth = client:GetMaxHealth()

    if ( current >= maxHealth ) then
        client:Notify("You are already at full health.")
        return false
    end

    local healAmount = 50
    client:SetHealth(math.min(current + healAmount, maxHealth))
    client:EmitSound("items/medshot4.wav")
    client:Notify("You used a first aid kit.")
    return true
end

impulse.Inventory:RegisterItem(ITEM)
