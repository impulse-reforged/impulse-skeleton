--[[
    TEAM EXAMPLE: Medical Team (With Quiz)

    This demonstrates a team with:
    - Entry quiz requirement
    - Multiple classes (Paramedic, Doctor, Surgeon)
    - Rank progression
    - Door group permissions
    - Custom whitelist requirements
--]]

TEAM = {}

-- BASIC INFORMATION
TEAM.name = "Medical Department"
TEAM.description = "Provide medical care and emergency response to the community."
TEAM.color = Color(200, 50, 60)

-- MODELS
TEAM.models = {
    "models/player/kleiner.mdl",
}

-- TEAM SETTINGS
TEAM.default = false
TEAM.limit = 6 -- Max 6 medical staff
TEAM.salary = 80
TEAM.salaryTime = 300

-- BASE LOADOUT
TEAM.loadout = {
    -- "weapon_medkit", -- Example medical tool
}

TEAM.runSpeed = 240

-- DOOR PERMISSIONS
-- Medical can access medical (3) and emergency (5) doors
-- Indices reference impulse.Config.DoorGroups
TEAM.doorGroup = {3, 5} -- Medical and emergency doors

-- QUIZ SYSTEM
-- Players must pass this quiz before joining the team
TEAM.quiz = {
    -- Question 1
    {
        question = "What is the primary role of the Medical Department?",
        answers = {
            {"To arrest criminals", false},
            {"To provide medical care to injured citizens", true}, -- Correct answer
            {"To sell items", false},
            {"To enforce laws", false},
        }
    },

    -- Question 2
    {
        question = "When should you respond to a medical emergency?",
        answers = {
            {"Only when you feel like it", false},
            {"When someone calls for medical assistance", true}, -- Correct
            {"Never, let them die", false},
            {"Only if they pay you first", false},
        }
    },

    -- Question 3
    {
        question = "Can you participate in criminal activities as medical staff?",
        answers = {
            {"Yes, I can do whatever I want", false},
            {"Only if I don't get caught", false},
            {"No, medical staff must remain neutral", true}, -- Correct
            {"Yes, as long as I help people after", false},
        }
    },

    -- Question 4
    {
        question = "What should you do if someone refuses medical treatment?",
        answers = {
            {"Force them to accept treatment", false},
            {"Respect their decision and move on", true}, -- Correct
            {"Arrest them", false},
            {"Charge them extra money", false},
        }
    },

    -- Question 5
    {
        question = "Can medical staff carry weapons for self-defense?",
        answers = {
            {"Yes, heavy weapons are recommended", false},
            {"No weapons at all under any circumstances", false},
            {"Only basic self-defense tools, remain neutral", true}, -- Correct
            {"Yes, full military arsenal", false},
        }
    },
}

-- CLASSES
-- Different medical specializations
TEAM.classes = {
    -- Class 1: Paramedic (Entry level)
    {
        name = "Paramedic",
        description = "First responder for medical emergencies.",
        models = {
            "models/player/kleiner.mdl",
        },
        loadout = {
            -- "weapon_basic_medkit",
        },
        limit = 4, -- Max 4 paramedics
        doorGroup = {3, 5}, -- Medical and emergency doors only
    },

    -- Class 2: Doctor
    {
        name = "Doctor",
        description = "Hospital physician providing advanced care.",
        models = {
            "models/player/mossman.mdl",
        },
        loadout = {
            -- "weapon_advanced_medkit",
            -- "weapon_defib",
        },
        limit = 2,
        xp = 200, -- Requires 200 XP
        doorGroup = {3, 5, 7}, -- Medical, emergency, and staff rooms
    },

    -- Class 3: Surgeon (Advanced)
    {
        name = "Surgeon",
        description = "Specialized surgeon for critical procedures.",
        models = {
            "models/player/mossman_arctic.mdl",
        },
        loadout = {
            -- "weapon_surgical_kit",
            -- "weapon_advanced_defib",
        },
        limit = 1,
        xp = 500,
        whitelistUID = "medical_surgeon",
        whitelistLevel = 2, -- Requires whitelist
        doorGroup = {3, 5, 7}, -- Full medical access (could add surgery-specific index)
    },
}

-- RANKS
-- Career progression within medical department
TEAM.ranks = {
    -- Rank 1: Intern
    {
        name = "Intern",
        description = "Medical intern learning the ropes.",
        -- Entry rank, no requirements
    },

    -- Rank 2: Junior Staff
    {
        name = "Junior Staff",
        description = "Junior medical professional.",
        xp = 150,
    },

    -- Rank 3: Senior Staff
    {
        name = "Senior Staff",
        description = "Experienced medical professional.",
        xp = 400,
        limit = 3, -- Only 3 senior staff
        doorGroup = {3, 5, 7}, -- Medical, emergency, and staff rooms
    },

    -- Rank 4: Chief of Medicine
    {
        name = "Chief of Medicine",
        description = "Department head and medical supervisor.",
        xp = 1000,
        limit = 1, -- Only one chief
        whitelistLevel = 3, -- Requires high whitelist
        doorGroup = {3, 5, 7}, -- Full medical facility access
    },
}

-- CUSTOM TEAM CHECK
function TEAM:customCheck(client)
    -- Example: Don't allow if player has active warrants
    -- if client:IsWanted() then
    --     return false, "You cannot join medical staff with active warrants!"
    -- end

    return true
end

-- WHEN PLAYER JOINS TEAM
function TEAM:onBecome(client)
    client:Notify("You are now a member of the Medical Department.")
    client:Notify("Remember: Provide care to all who need it, remain neutral.")

    -- Could give starting medical supplies
    -- client:GiveInventoryItem("medkit")
    -- client:GiveInventoryItem("bandages")
end

-- Register the team
impulse.Teams:Register(TEAM)
