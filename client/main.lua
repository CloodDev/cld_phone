ESX = exports['es_extended']:getSharedObject()

local isPhoneOut = false

function TogglePhone()
    SendNUIMessage({'action' = 'TogglePhone', 'info'= isPhoneOut})
    isPhoneOut = not isPhoneOut
end



RegisterNetEvent('cld_phone:triggerphone')
AddEventHandler('cld_phone:triggerphone', function()
    TogglePhone()
end)