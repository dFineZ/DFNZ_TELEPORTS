lib.locale()

RegisterServerEvent('teleport:port')
AddEventHandler('teleport:port', function(label, exit, needJob, job)
    local xPlayer = ESX.GetPlayerFromId(source)

    if needJob then
        if xPlayer.getJob().name == job then
            xPlayer.setCoords(vec3(exit))
            if Config.EnableWebhook then
                TriggerEvent('logger:sendHook', Config.WebhookURL, 16735488, locale('teleport'), xPlayer.name..' ['..xPlayer.source..'] '..locale('has')..' '..label, footer)
            end
        else
            TriggerClientEvent('ox_lib:notify', source, {description = locale('wrong_job'), position = 'top', type = 'error', iconAnimation = 'beatFade', duration = 5000})
            if Config.EnableWebhook then
                TriggerEvent('logger:sendHook', Config.WebhookURL, 16735488, locale('teleport'), xPlayer.name..' ['..xPlayer.source..'] '..locale('try_to')..' '..label..' '..locale('has_wrong_job'), footer)
            end
        end
    else
        xPlayer.setCoords(vec3(exit))
        TriggerEvent('logger:sendHook', Config.WebhookURL, 16735488, locale('teleport'), xPlayer.name..' ['..xPlayer.source..'] '..locale('has')..' '..label, footer)
    end
end)