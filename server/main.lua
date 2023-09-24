ESX = exports['es_extended']:getSharedObject()

ESX.RegisterUsableItem('phone', function(playerId)
    TriggerClientEvent('cld_phone:triggerphone', playerId)
end)