lib.locale()

for k, v in pairs(Config.Teleports) do
    exports.ox_target:addBoxZone({
        coords = v.enter,
        size = v.size,
        rotation = v.rotation,
        debug = Config.Debug,
        options = {
            {
                label = v.label,
                icon = 'fa-solid fa-door-open',
                iconColor = Config.IconColor,
                distance = 1.5,
                onSelect = function()
                    if v.needPin then
                        local pin = lib.inputDialog(locale('password'), {
                            {type = 'input', label = locale('enter_password'), password = true, required = true}
                        })
                        if tonumber(pin[1]) ~= tonumber(v.pin) then
                            lib.notify({description = locale('wrong_password'), type = 'error', iconAnimation = 'beatFade', position = 'top', duration = 5000})
                        else
                            lib.progressCircle({
                                label = v.label,
                                duration = 1000,
                                position = 'bottom',
                                allowCuffed = false,
                                canCancle = false,
                                useWhileDead = false,
                                anim = {
                                    dict = 'anim@heists@keycard@',
                                    clip = 'exit'
                                },
                                disable = {
                                    move = true,
                                    car = true,
                                    mouse = true,
                                    sprint = true,
                                    combat = true,
                                }
                            })
                            DoScreenFadeOut(1000)
                            Wait(1000)
                            TriggerServerEvent('teleport:port', v.label, v.exit, v.needJob, v.job)
                            DoScreenFadeIn(1000)
                        end
                    else
                        lib.progressCircle({
                            label = v.label,
                            duration = 1000,
                            position = 'bottom',
                            allowCuffed = false,
                            canCancle = false,
                            useWhileDead = false,
                            anim = {
                                dict = 'anim@heists@keycard@',
                                clip = 'exit'
                            },
                            disable = {
                                move = true,
                                car = true,
                                mouse = true,
                                sprint = true,
                                combat = true,
                            }
                        })
                        DoScreenFadeOut(1000)
                        Wait(1000)
                        TriggerServerEvent('teleport:port', v.label, v.exit, v.needJob, v.job)
                        DoScreenFadeIn(1000)
                    end
                end
            }
        }
    })
end