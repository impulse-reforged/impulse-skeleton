--[[
    VENDOR EXAMPLE: Gun Store

    A specialized vendor that sells weapons.
    Shows how to restrict vendor access.
--]]

VENDOR = {}

VENDOR.Name = "Gun Shop Owner"
VENDOR.Description = "Sells firearms to licensed citizens."
VENDOR.Model = "models/player/monk.mdl"
VENDOR.UniqueID = "gun_store"

VENDOR.Items = {
    ["weapon_pistol"] = 500,
    -- Add more weapons here
}

-- Restrict who can buy from this vendor
function VENDOR:CanUse(client)
    -- Example: Only certain teams can buy guns
    local team = client:Team()
    local allowedTeams = {
        [impulse.Teams.citizen] = true,
        [impulse.Teams.police] = true,
    }

    if not allowedTeams[team] then
        return false, "I don't sell to your kind."
    end

    -- Example: Check if player has a license
    -- if not client:HasLicense("firearms") then
    --     return false, "You need a firearms license!"
    -- end

    return true
end

impulse.Vendor:Register(VENDOR)
