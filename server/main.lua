if Config.esxVersion == 'new' then
    ESX = exports['es_extended']:getSharedObject()
elseif Config.esxVersion == 'legacy' then
    TriggerEvent(Config.esxTrigger, function(obj) ESX = obj end)
else
    print('ESX VERSION INVALID CHECK config.lua TO FIX')
end
ESX.RegisterUsableItem('phone', function(playerId)
    TriggerClientEvent('cld_phone:triggerphone', playerId)
end)