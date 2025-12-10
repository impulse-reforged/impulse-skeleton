-- Configuration file for your schema
-- This file is loaded on both the server and client (shared)

-- SCHEMA INFO
impulse.Config.SchemaName = "My Schema" -- Name of your schema

-- CURRENCY
impulse.Config.CurrencyPrefix = "$" -- Currency symbol/prefix (e.g., "$", "£", "€")
impulse.Config.CurrencyName = "Dollars" -- Full currency name (e.g., "Dollars", "Credits")
impulse.Config.StartingMoney = 500 -- Money new characters start with
impulse.Config.StartingBankMoney = 0 -- Bank money new characters start with

-- INVENTORY
impulse.Config.InventoryMaxWeight = 30 -- Max weight (kg) a player can carry
impulse.Config.InventoryStorageMaxWeight = 100 -- Storage container weight limit
impulse.Config.InventoryStorageMaxWeightDonator = 150 -- Storage weight limit for donators

-- CHAT DISTANCES (in source units)
impulse.Config.TalkDistance = 300 -- How far normal chat can be heard
impulse.Config.WhisperDistance = 100 -- How far whisper chat can be heard
impulse.Config.YellDistance = 600 -- How far yell chat can be heard

-- PLAYER MOVEMENT
impulse.Config.WalkSpeed = 100 -- Walking speed
impulse.Config.JogSpeed = 235 -- Jogging/running speed
impulse.Config.JumpPower = 160 -- Jump power

-- RESPAWN SETTINGS
impulse.Config.RespawnTime = 30 -- Seconds until respawn (normal players)
impulse.Config.RespawnTimeDonator = 5 -- Seconds until respawn (donators)

-- TEAM/CLASS CHANGES
impulse.Config.TeamChangeTime = 300 -- Cooldown (seconds) between team changes
impulse.Config.TeamChangeTimeDonator = 120 -- Team change cooldown for donators
impulse.Config.ClassChangeTime = 60 -- Cooldown (seconds) between class changes
impulse.Config.DefaultTeam = 1 -- Team ID for default/citizen team

-- DOORS
impulse.Config.DoorPrice = 100 -- Cost to purchase a door
impulse.Config.DoorGroups = {
    [1] = "Citizen", -- Public/citizen doors
    [2] = "Police", -- Police department doors
    [3] = "Medical", -- Hospital/medical doors
    [4] = "Government", -- Government building doors
    [5] = "Emergency", -- Emergency services (police + medical)
    [6] = "Fire Department", -- Fire station doors
    [7] = "Staff Room", -- Staff-only areas
    [8] = "VIP", -- VIP/donator areas
}

-- PROPS
impulse.Config.PropLimit = 20 -- Max props per player
impulse.Config.PropLimitDonator = 40 -- Max props for donators
impulse.Config.PropPrice = 10 -- Cost to spawn a prop
impulse.Config.PropPriceDonator = 5 -- Cost to spawn prop (donators)

-- DROPPED ITEMS/MONEY
impulse.Config.DroppedItemsLimit = 10 -- Max items a player can have dropped at once
impulse.Config.DroppedMoneyLimit = 5 -- Max money entities a player can drop at once

-- OOC CHAT LIMITS
impulse.Config.OOCLimit = 5 -- OOC messages before cooldown (normal players)
impulse.Config.OOCLimitVIP = 10 -- OOC messages before cooldown (donators)

-- QUIZ SYSTEM
impulse.Config.QuizWaitTime = 5 -- Minutes to wait after failing a quiz

-- COSMETICS (Character Editor)
impulse.Config.RPNameChangePrice = 1000 -- Cost to change character name
impulse.Config.CosmeticGenderPrice = 500 -- Cost to change character gender
impulse.Config.CosmeticModelSkinPrice = 100 -- Cost to change model skin

-- CHARACTER MODELS (for default team customization)
impulse.Config.DefaultMaleModels = {
    "models/player/group01/male_01.mdl",
    "models/player/group01/male_02.mdl",
    "models/player/group01/male_03.mdl",
    "models/player/group01/male_04.mdl",
    "models/player/group01/male_05.mdl",
    "models/player/group01/male_06.mdl",
    "models/player/group01/male_07.mdl",
    "models/player/group01/male_08.mdl",
    "models/player/group01/male_09.mdl",
}

impulse.Config.DefaultFemaleModels = {
    "models/player/group01/female_01.mdl",
    "models/player/group01/female_02.mdl",
    "models/player/group01/female_03.mdl",
    "models/player/group01/female_04.mdl",
    "models/player/group01/female_05.mdl",
    "models/player/group01/female_06.mdl",
}

-- Skin blacklist per model (optional)
-- impulse.Config.DefaultSkinBlacklist = {
--     ["models/player/group01/male_01.mdl"] = {1, 2}, -- Disallow skins 1 and 2
-- }

-- ENTITY MODELS
impulse.Config.InventoryStorageModel = "models/props_c17/suitcase_passenger_physics.mdl"
impulse.Config.InventoryStoragePublicModel = "models/props_c17/suitcase001a.mdl"
impulse.Config.ATMModel = "models/props_lab/monitor02.mdl"

-- MAP SPECIFIC
-- Note: Create map-specific configs in schema/config/maps/[mapname].lua
-- Those configs will override these settings for that specific map

-- EXAMPLE: Additional settings you can define
-- Disable specific plugins
-- impulse.Config.DisabledPlugins = {
--      ["pluginname"] = true,
-- }
-- impulse.Config.HungerTime = 300 -- Seconds between hunger decrease
-- impulse.Config.HungerHealTime = 600 -- Seconds between hunger healing
-- impulse.Config.XPTime = 600 -- Seconds between XP gains
-- impulse.Config.XPGet = 5 -- XP gained per interval
-- impulse.Config.XPGetDonator = 10 -- XP gained per interval (donators)
-- impulse.Config.MaxLetters = 5 -- Max letters a player can have

print("[Schema Config] Loaded configuration for " .. (SCHEMA.Name or "Unknown Schema"))
