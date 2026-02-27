--[[
    TEAM EXAMPLE: Citizen (Simple)
    
    This is a basic team with no classes or ranks.
    Perfect for default teams like citizens, visitors, etc.
--]]

TEAM = {}

-- BASIC INFORMATION
TEAM.name = "Citizen" -- Display name (required)
TEAM.description = "A regular citizen trying to make a living."
TEAM.color = Color(70, 130, 180) -- Team color for chat/UI (required)

-- MODELS
-- Simple list of models - one random model is selected on spawn
TEAM.models = {
    "models/player/group01/male_01.mdl",
    "models/player/group01/male_02.mdl",
    "models/player/group01/male_04.mdl",
    "models/player/group01/male_05.mdl",
    "models/player/group01/male_06.mdl",
    "models/player/group01/female_01.mdl",
    "models/player/group01/female_02.mdl",
    "models/player/group01/female_03.mdl",
    "models/player/group01/female_04.mdl",
}

-- TEAM SETTINGS
TEAM.default = true -- Players spawn as this team if true
TEAM.limit = 0 -- Max players (0 = unlimited)
TEAM.salary = 45 -- Money earned per salary interval
TEAM.salaryTime = 300 -- Seconds between salary payments

-- LOADOUT
-- Weapons given on spawn (not inventory items!)
TEAM.loadout = {
    "weapon_physgun",
    "gmod_tool",
    "impulse_hands",
    -- "weapon_keys", -- Example
}

-- SPAWN SETTINGS
TEAM.runSpeed = 235 -- Running speed (default is 235)
-- TEAM.walkSpeed = 100 -- Walking speed (optional)

-- DOOR PERMISSIONS
-- List of door group INDICES this team can access
-- Must match indices defined in impulse.Config.DoorGroups
TEAM.doorGroup = {1} -- Index 1 = "Citizen" doors (see config/sh_config.lua)

-- Optional: What happens when player joins this team
function TEAM:onBecome(client)
    -- client:Notify("You are now a citizen.")
end

-- Optional: Custom requirements to join
function TEAM:customCheck(client)
    -- return false, "You cannot join this team!"
    return true
end

-- Register the team
impulse.Teams:Register(TEAM)
