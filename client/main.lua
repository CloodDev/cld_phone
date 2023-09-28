Citizen.CreateThread(function()
    while ESX == nil do
        if Config.esxVersion == 'new' then
            ESX = exports['es_extended']:getSharedObject()
        elseif Config.esxVersion == 'legacy' then
            TriggerEvent(Config.esxTrigger, function(obj) ESX = obj end)
        else
            print('ESX VERSION INVALID CHECK config.lua TO FIX')
        end
        Citizen.Wait(200)
    end
end)


local isPhoneOut = false

function TogglePhone()
    SendNUIMessage({'action' = 'TogglePhone', 'info'= isPhoneOut})
    isPhoneOut = not isPhoneOut
end



RegisterNetEvent('cld_phone:triggerphone')
AddEventHandler('cld_phone:triggerphone', function()
    TogglePhone()
end)