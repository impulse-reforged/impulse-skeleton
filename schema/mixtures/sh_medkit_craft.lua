--[[
    MIXTURE EXAMPLE: Advanced Recipe
    
    This shows a more complex recipe with multiple ingredients and outputs.
--]]

MIXTURE = {}

MIXTURE.Name = "First Aid Kit"
MIXTURE.Description = "Craft a medical kit from bandages and medicine."
MIXTURE.Class = "craft_medkit"
MIXTURE.Bench = "workbench"
MIXTURE.Time = 15

-- Multiple ingredients
MIXTURE.Input = {
    ["bandage"] = {take = 2, exact = false},
    ["medicine_bottle"] = {take = 1, exact = false},
    ["cloth"] = {take = 1, exact = false},
}

-- Can have multiple outputs or outputs with chance
MIXTURE.Output = {
    ["medkit"] = {1, 90}, -- 90% chance to get a medkit
    ["bandage"] = {1, 10}, -- 10% chance to get 1 bandage back (failed craft)
}

-- Example: Require skill level
function MIXTURE:CanUse(client)
    -- if not client:HasSkill("medical") then
    --     return false, "You need medical knowledge to craft this!"
    -- end
    return true
end

function MIXTURE:OnComplete(client, success, item)
    if item == "medkit" then
        client:Notify("Successfully crafted a first aid kit!")
        -- client:AddXP(25) -- Reward XP
    else
        client:Notify("The crafting failed... you salvaged some bandages.")
    end
end

impulse.Inventory:RegisterMixture(MIXTURE)
