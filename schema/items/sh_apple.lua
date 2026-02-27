local ITEM = {}

ITEM.Name = "Apple"
ITEM.Desc = "A fresh, crisp apple. Restores a small amount of hunger."
ITEM.Model = "models/props/cs_italy/orange.mdl"
ITEM.Weight = 0.2
ITEM.UniqueID = "apple"

ITEM.CanStack = true
ITEM.DropOnDeath = true
ITEM.Category = "Food"

function ITEM:OnUse(client)
    client:FeedHunger(15)
    client:EmitSound("npc/barnacle/barnacle_crunch2.wav")
    client:Notify("You ate an apple and feel a bit less hungry.")
    return true
end

impulse.Inventory:RegisterItem(ITEM)
