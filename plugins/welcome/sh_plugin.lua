--[[
    PLUGIN EXAMPLE: Simple Utility Plugin

    Plugins are modular features that can be enabled/disabled.
    This is a simple example that adds a welcome message and playtime tracking.

    To disable a plugin, add it to impulse.Config.DisabledPlugins in your config.
--]]

PLUGIN.Name = "Welcome System"
PLUGIN.Author = "Your Name"
PLUGIN.Description = "Welcomes players when they join and tracks playtime."
PLUGIN.Version = "1.0"

-- This code runs when the plugin loads
if SERVER then
    print("[Plugin] Welcome System loaded!")

    -- Add a database field to track playtime (optional)
    -- impulse.Database:AddToSchema("impulse_players", "total_playtime", impulse.Util.Type.number)
end

-- Hook: Player joins the server
function PLUGIN:PlayerInitialSpawn(client)
    -- Wait a bit so the player is fully loaded
    timer.Simple(2, function()
        if IsValid(client) then
            client:Notify("Welcome to " .. (SCHEMA.Name or "the server") .. "!")
            client:Notify("Type /help for a list of commands.")
        end
    end)
end

-- Hook: Player spawns
function PLUGIN:PlayerSpawn(client)
    if not client.JoinTime then
        client.JoinTime = CurTime()
    end
end

-- Hook: Player disconnects
function PLUGIN:PlayerDisconnected(client)
    if client.JoinTime then
        local sessionTime = math.floor(CurTime() - client.JoinTime)
        print(client:Name() .. " played for " .. sessionTime .. " seconds this session")

        -- You could save this to database here
        -- local totalTime = (client:GetData("total_playtime") or 0) + sessionTime
        -- client:SetData("total_playtime", totalTime)
    end
end

-- Example: Add a chat command
if SERVER then
    impulse.RegisterChatCommand("/playtime", {
        description = "Shows your total playtime",
        requiresArg = false,
        onRun = function(client)
            if client.JoinTime then
                local sessionTime = math.floor(CurTime() - client.JoinTime)
                client:Notify("You've been playing for " .. string.NiceTime(sessionTime) .. " this session.")
            else
                client:Notify("Playtime data not available.")
            end
        end
    })
end
