--[[
    TEAM EXAMPLE: Police (With Classes & Ranks)

    This demonstrates a complex team with:
    - Multiple classes (Officer, Detective, SWAT)
    - Rank system (Recruit, Officer, Sergeant, etc.)
    - Whitelist requirements
    - Custom loadouts per class and rank
--]]

TEAM = {}

-- BASIC INFORMATION
TEAM.name = "Police Department"
TEAM.description = "Uphold the law and protect citizens."
TEAM.color = Color(25, 60, 180)

-- BASE MODELS (used if no class selected)
TEAM.models = {
    "models/player/police.mdl",
}

-- TEAM SETTINGS
TEAM.default = false
TEAM.limit = 8 -- Max 8 police total
TEAM.salary = 85
TEAM.salaryTime = 300
TEAM.cp = true -- This is a law enforcement team

-- BASE LOADOUT (all police get these)
TEAM.loadout = {
    "weapon_physgun",
    "gmod_tool",
    "impulse_hands",
    "weapon_stunstick",
    -- "weapon_keys",
}

TEAM.runSpeed = 250

-- DOOR PERMISSIONS
-- Police can access police (2), government (4), and emergency (5) doors
TEAM.doorGroup = {2, 4, 5} -- Indices from impulse.Config.DoorGroups

-- XP REQUIREMENT
-- TEAM.xp = 100 -- Require 100 XP to join

-- CLASSES
-- Classes are sub-roles within a team (Officer, Detective, SWAT, etc.)
TEAM.classes = {
    -- Class 1: Patrol Officer
    {
        name = "Patrol Officer",
        description = "Standard patrol duties and law enforcement.",
        models = {
            "models/player/police.mdl",
            "models/player/police_fem.mdl",
        },
        loadout = {
            "weapon_pistol",
            -- Add class-specific weapons
        },
        limit = 6, -- Max 6 patrol officers
        doorGroup = {2, 5}, -- Police and emergency doors only
        -- whitelistUID = "police", -- Require whitelist (optional)
        -- whitelistLevel = 1,
        -- xp = 50, -- Class-specific XP requirement
    },

    -- Class 2: Detective
    {
        name = "Detective",
        description = "Investigate crimes and gather evidence.",
        models = {
            "models/player/combine_soldier_prisonguard.mdl",
        },
        loadout = {
            "weapon_pistol",
            -- "weapon_scanner", -- Detective tools
        },
        limit = 2, -- Only 2 detectives
        doorGroup = {2, 4, 5, 7}, -- Police, government, emergency, and staff rooms
        whitelistUID = "police_detective",
        whitelistLevel = 2, -- Requires whitelist level 2
        xp = 200, -- Requires more XP
    },  xp = 200, -- Requires more XP

    -- Class 3: SWAT
    {
        name = "SWAT",
        description = "Tactical response unit for high-risk situations.",
        models = {
            "models/player/urban.mdl",
        },
        loadout = {
            "weapon_pistol",
            "weapon_mp5",
            -- "weapon_shield",
        },
        limit = 2,
        whitelistUID = "police_swat",
        whitelistLevel = 3,
        xp = 500,
        runSpeed = 260, -- SWAT moves faster

        -- Custom check for this class
        customCheck = function(self, client)
            -- Example: Require admin approval
            -- if not client:GetData("swat_approved") then
            --     return false, "You need admin approval to join SWAT!"
            -- end
            return true
        end,
    },
}

-- RANKS
-- Ranks are hierarchy levels within a team/class (Recruit, Officer, Sergeant, etc.)
TEAM.ranks = {
    -- Rank 1: Recruit
    {
        name = "Recruit",
        description = "Entry level officer in training.",
        -- No additional requirements
    },

    -- Rank 2: Officer
    {
        name = "Officer",
        description = "Full-fledged police officer.",
        xp = 100, -- Need 100 XP to be Officer
    },

    -- Rank 3: Corporal
    {
        name = "Corporal",
        description = "Senior officer with leadership duties.",
        xp = 300,
        limit = 4, -- Only 4 corporals max
    },

    -- Rank 4: Sergeant
    {
        name = "Sergeant",
        description = "Supervises officers and manages shifts.",
        xp = 600,
        limit = 2,
        whitelistLevel = 2, -- Requires whitelist
    },

    -- Rank 5: Lieutenant
    {
        name = "Lieutenant",
        description = "Department leadership and strategic planning.",
        xp = 1000,
        limit = 1,
        whitelistLevel = 3,
    },
}

-- CUSTOM TEAM CHECK
function TEAM:customCheck(client)
    -- Example: Check if player has illegal items
    -- if client:HasIllegalInventoryItem() then
    --     return false, "You cannot join police with illegal items!"
    -- end

    return true
end

-- WHEN PLAYER JOINS TEAM
function TEAM:onBecome(client)
    client:Notify("You are now a member of the Police Department.")
    client:Notify("Use F3 to change your class and rank.")

    -- Could give starting items
    -- client:GiveInventoryItem("police_radio")
end

-- Register the team
impulse.Teams:Register(TEAM)
