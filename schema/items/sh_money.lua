--[[
    ITEM EXAMPLE: Money/Currency

    This shows how to create a money item that can be picked up and used.
--]]

ITEM = {}

ITEM.Name = "Cash"
ITEM.Description = "A stack of bills. Can be added to your wallet."
ITEM.Model = "models/props/cs_assault/money.mdl"
ITEM.Weight = 0.1
ITEM.UniqueID = "money_cash"

ITEM.Stackable = false -- Each stack is separate
ITEM.Category = "Currency"
ITEM.DropOnDeath = true -- Money drops when you die!

-- Money items usually store an amount in metadata
ITEM.DefaultAmount = 100 -- Default amount if not specified

function ITEM:GetDescription()
    -- Customize description based on amount stored
    local amount = self.Amount or self.DefaultAmount
    return "A stack of bills worth " .. impulse.Config.CurrencySymbol .. amount
end

function ITEM:OnUse(client)
    local amount = self.Amount or self.DefaultAmount

    -- Add money to player's account
    client:AddMoney(amount)
    client:Notify("You added " .. impulse.Config.CurrencySymbol .. amount .. " to your wallet.")

    -- Play a sound
    client:EmitSound("ambient/levels/canals/drip4.wav")

    return true -- Remove the item
end

-- Optional: When dropping, preserve the amount
-- function ITEM:OnDrop(client, entity)
--     if IsValid(entity) then
--         entity.Amount = self.Amount
--     end
-- end

impulse.Inventory:RegisterItem(ITEM)
