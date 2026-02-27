local ITEM = {}

ITEM.Name = "Pistol"
ITEM.Desc = "A standard 9mm pistol. Reliable and easy to use."
ITEM.Model = "models/weapons/w_pist_usp.mdl"
ITEM.Weight = 1.5
ITEM.UniqueID = "weapon_pistol"

ITEM.WeaponClass = "weapon_pistol"
ITEM.Category = "Weapons"

ITEM.CanStack = false
ITEM.DropOnDeath = true

impulse.Inventory:RegisterItem(ITEM)
