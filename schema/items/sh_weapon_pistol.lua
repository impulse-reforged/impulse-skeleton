--[[
    ITEM EXAMPLE: Weapon
    
    This item gives the player a weapon when equipped.
    The framework handles equipping/unequipping automatically.
--]]

ITEM = {}

ITEM.Name = "Pistol"
ITEM.Description = "A standard 9mm pistol. Reliable and easy to use."
ITEM.Model = "models/weapons/w_pist_usp.mdl"
ITEM.Weight = 1.5
ITEM.UniqueID = "weapon_pistol"

-- WEAPON SPECIFIC
ITEM.WeaponClass = "weapon_pistol" -- The weapon class to give the player
ITEM.Category = "Weapons" -- Optional: Organize items into categories

ITEM.Stackable = false -- Weapons typically don't stack
ITEM.DropOnDeath = true

-- Optional: Customize what happens when equipped
-- function ITEM:OnEquip(client, data, uid, sec)
--     The framework automatically gives the weapon!
--     You can add custom logic here if needed
--     client:Notify("Pistol equipped!")
-- end

-- Optional: Customize what happens when unequipped
-- function ITEM:UnEquip(client)
--     The framework automatically removes the weapon!
--     client:Notify("Pistol holstered.")
-- end

impulse.Inventory:RegisterItem(ITEM)
