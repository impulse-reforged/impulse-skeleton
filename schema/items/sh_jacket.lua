local ITEM = {}

ITEM.Name = "Winter Jacket"
ITEM.Desc = "A warm winter jacket. Makes you look stylish."
ITEM.Model = "models/props_c17/suitcase001a.mdl"
ITEM.Weight = 1.2
ITEM.UniqueID = "jacket_winter"

ITEM.CanStack = false
ITEM.Category = "Clothing"
ITEM.EquipGroup = "clothing"

function ITEM:OnEquip(client)
    client:Notify("You put on the winter jacket.")
end

function ITEM:UnEquip(client)
    client:Notify("You take off the winter jacket.")
end

impulse.Inventory:RegisterItem(ITEM)
