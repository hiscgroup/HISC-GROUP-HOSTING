Citizen.CreateThread(function()
    local dict = "amb@world_human_hang_out_street@female_arms_crossed@base"

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    local handsup = false
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 47) then --Start holding G
            if not handsup then
                TaskPlayAnim(GetPlayerPed(-1), dict, "base", 8.0, 8.0, -1, 50, 0, false, false, false)
                handsup = true
                Citizen.CreateThread(function()
                    while IsEntityPlayingAnim(PlayerPedId(), dict, "base", 3) do
                        DisablePlayerFiring(PlayerId(), true)
                        DisableControlAction(0, 24)
                        DisableControlAction(0, 25)
                        DisableControlAction(0, 45)
                        Wait(0)
                    end                
                end)
            else
                handsup = false
                ClearPedTasks(GetPlayerPed(-1))
            end
        end
    end
end)