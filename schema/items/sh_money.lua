local ITEM = {}

ITEM.Name = "Cash"
ITEM.Desc = "A stack of bills. Add it to your wallet."
ITEM.Model = "models/props/cs_assault/money.mdl"
ITEM.Weight = 0.1
ITEM.UniqueID = "money_cash"

ITEM.CanStack = false
ITEM.Category = "Currency"
ITEM.DropOnDeath = true

ITEM.Amount = 100

function ITEM:OnUse(client)
    client:AddMoney(self.Amount)
    client:Notify("You added " .. impulse.Config.CurrencyPrefix .. self.Amount .. " to your wallet.")
    client:EmitSound("ambient/levels/canals/drip4.wav")
    return true
end

impulse.Inventory:RegisterItem(ITEM)
