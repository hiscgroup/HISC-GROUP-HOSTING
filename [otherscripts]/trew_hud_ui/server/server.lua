ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('trew_hud_ui:getServerInfo')
AddEventHandler('trew_hud_ui:getServerInfo', function()

    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local job
    local job2

    if xPlayer ~= nil then
        if xPlayer.job.label == xPlayer.job.grade_label then
            job = xPlayer.job.grade_label
        else
            job = xPlayer.job.label .. ': ' .. xPlayer.job.grade_label
        end

        if xPlayer.job2.label == xPlayer.job2.grade_label then 
            job2 = xPlayer.job2.grade_label 
        else
            job2 = xPlayer.job2.label .. ': ' .. xPlayer.job2.grade_label
        end

        local info = {
            job = job,
            job2 = job2, 
            money = xPlayer.getMoney(),
            bankMoney = xPlayer.getBank(),
            blackMoney = xPlayer.getAccount('black_money').money
        }

        TriggerClientEvent('trew_hud_ui:setInfo', source, info)
    end
end)