--[[
    BENCH EXAMPLE: Workbench
    
    Benches are crafting stations where players can combine items to create new ones.
    This creates a basic workbench for crafting simple items.
--]]

BENCH = {}

BENCH.Name = "Workbench" -- Display name
BENCH.Description = "A simple workbench for crafting basic items."
BENCH.Model = "models/props_c17/tools_wrench01a.mdl" -- Model when placed in world
BENCH.Class = "workbench" -- Unique identifier (used by mixtures/recipes)

-- Optional: Can this player use this bench?
-- function BENCH:CanUse(client)
--     return true
-- end

impulse.Inventory:RegisterBench(BENCH)
