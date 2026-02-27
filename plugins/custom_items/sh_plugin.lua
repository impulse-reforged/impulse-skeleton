--[[
    PLUGIN EXAMPLE: Custom Items Plugin

    This plugin adds custom items. It's a good way to organize items
    that are specific to a feature rather than core schema items.
--]]

PLUGIN.Name = "Custom Items"
PLUGIN.Author = "Your Name"
PLUGIN.Description = "Adds additional custom items to the schema."
PLUGIN.Version = "1.0"

-- You can add items directly in the plugin, or in a separate items/ folder
-- The framework will automatically load files from plugins/yourplugin/items/

-- Example: Add an item directly in the plugin file
local ITEM = {}
ITEM.Name = "Energy Drink"
ITEM.Description = "Gives you a temporary speed boost!"
ITEM.Model = "models/props_junk/popcan01a.mdl"
ITEM.Weight = 0.3
ITEM.UniqueID = "energy_drink"
ITEM.Stackable = true

function ITEM:OnUse(client)
    client:Notify("You feel energized!")
    client:EmitSound("npc/barnacle/barnacle_gulp1.wav")

    -- Give temporary speed boost
    local oldSpeed = client:GetRunSpeed()
    client:SetRunSpeed(oldSpeed * 1.5)

    -- Remove boost after 30 seconds
    timer.Simple(30, function()
        if IsValid(client) then
            client:SetRunSpeed(oldSpeed)
            client:Notify("The energy boost wore off.")
        end
    end)

    return true
end

impulse.Inventory:RegisterItem(ITEM)
