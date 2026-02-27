local ITEM = {}

ITEM.Name = "Wood Plank"
ITEM.Desc = "A sturdy wooden plank. Used in crafting recipes."
ITEM.Model = "models/props_debris/wood_board04a.mdl"
ITEM.Weight = 2
ITEM.UniqueID = "wood_plank"

ITEM.CanStack = true
ITEM.Category = "Materials"
ITEM.DropOnDeath = false

impulse.Inventory:RegisterItem(ITEM)
