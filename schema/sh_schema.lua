-- This is the main entry point for your schema.
-- This file defines basic information about your schema that will be displayed in-game.

SCHEMA.Name = "Skeleton" -- The name of your schema
SCHEMA.Author = "Your Name" -- Your name or team name
SCHEMA.Description = "A starter schema for impulse-reforged" -- Brief description

-- This is where you can add schema-wide variables or settings
-- For example:
-- SCHEMA.MaxInventoryWeight = 50
-- SCHEMA.StartingMoney = 100

-- You can also define custom functions here that you'll use throughout your schema
-- For example:
--[[
function SCHEMA:CustomFunction()
    -- Your code here
end
]]--

-- NOTE: Most of your schema's functionality will be in other files:
-- - config/ for configuration
-- - items/ for item definitions  
-- - teams/ for faction/class setup
-- - scripts/hooks/ for game event handling
-- - plugins/ for modular features
