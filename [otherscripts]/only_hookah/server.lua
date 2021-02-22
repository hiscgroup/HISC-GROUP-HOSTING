ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("shisha:pay")
AddEventHandler("shisha:pay", function(entity)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeMoney(20)
end)

RegisterServerEvent("eff_smokes")
AddEventHandler("eff_smokes", function(entity)
	TriggerClientEvent("c_eff_smokes", -1, entity)
end)

ESX.RegisterUsableItem('hookah', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    xPlayer.removeInventoryItem('hookah', 1)
	xPlayer.showNotification('~g~The shisha was set up.')
	TriggerClientEvent("only_hooka:spawn", -1, entity)
end)

RegisterCommand("deletehookah", function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent("only_hooka:delete", -1, entity)
	xPlayer.addInventoryItem("hookah", 1)
end)