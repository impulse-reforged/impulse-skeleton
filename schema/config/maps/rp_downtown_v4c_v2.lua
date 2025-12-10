-- Map-specific configuration for rp_downtown_v4c_v2
-- This file will only load when the server is running on this map
-- You can override any settings from sh_config.lua here

-- STARTING MONEY (override for this map)
impulse.Config.StartingMoney = 750 -- Give more starting money on downtown

-- SPAWN POINTS (optional - define custom spawn points per team)
-- Format: [team_id] = {table of spawn data}
-- impulse.Config.SpawnPoints = {
--     [1] = { -- Team ID 1 (Citizen)
--         {pos = Vector(-5934, -1076, 0), ang = Angle(0, 90, 0)},
--         {pos = Vector(-5934, -1200, 0), ang = Angle(0, 90, 0)},
--     },
--     [2] = { -- Team ID 2 (Police)
--         {pos = Vector(100, 200, 64), ang = Angle(0, 180, 0)},
--     },
-- }

-- EXAMPLE: Override other settings for this map
-- impulse.Config.HungerTime = 600 -- Different hunger rate on this map
-- impulse.Config.PropLimit = 30 -- Higher prop limit on this map

print("[Schema Config] Loaded map config for rp_downtown_v4c_v2")
