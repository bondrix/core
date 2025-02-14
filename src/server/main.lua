function BondrixCore.GetIdentifier(player)
    if not DoesPlayerExist(player) then
        if BondrixCore.Config.debug then BondrixLib.Debug('Can not get the identifier of a nil player!') end
        return
    end

    local identifiers = {
        license = GetPlayerIdentifierByType(player, 'license'):sub(9),
        license2 = GetPlayerIdentifierByType(player, 'license2'):sub(10),
        fivem = GetPlayerIdentifierByType(player, 'fivem'):sub(7)
    }

    if not identifiers[BondrixCore.Config.identifier] then
        if BondrixCore.Config.debug then BondrixLib.Debug('Invalid identifier ' .. BondrixCore.Config.identifier .. ' is set in the config file!') end
        return
    end

    return identifiers[BondrixCore.Config.identifier]
end