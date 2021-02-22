cooldown = 0
ispriority = false
ishold = false

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("priority", function(src, args, raw)
	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer["job"]["name"] == "police" then
		TriggerEvent("cooldownt")
	else
		TriggerClientEvent('esx:showNotification', src, '~h~~r~You are not authorized for this command...~r~~h~')
	end
end, false)

RegisterCommand("inprogress", function(src, args, raw)
	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer["job"]["name"] == "police" then
		TriggerEvent('isPriority')
	else
		TriggerClientEvent('esx:showNotification', src, '~h~~r~You are not authorized for this command...~r~~h~')
	end
	
end, false)


RegisterCommand("onhold", function(src, args, raw)
	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer["job"]["name"] == "police" then
		TriggerEvent('isOnHold')
	else
		TriggerClientEvent('esx:showNotification', src, '~h~~r~You are not authorized for this command...~r~~h~')
	end
	
end, false)

RegisterNetEvent('isPriority')
AddEventHandler('isPriority', function()
	ispriority = true
	Citizen.Wait(1)
	TriggerClientEvent('UpdatePriority', -1, ispriority)
	TriggerClientEvent('chatMessage', -1, "ΠΡΟΕΙΔΟΠΟΙΗΣΗ:", {255, 0, 0}, "^1Μια ληστεία είναι ήδη σε εξέλιξη. Όλες οι υπόλοιπες είναι σε αναμονή!")
end)

RegisterNetEvent('isOnHold')
AddEventHandler('isOnHold', function()
	ishold = true
	Citizen.Wait(1)
	TriggerClientEvent('UpdateHold', -1, ishold)
end)

RegisterNetEvent("cooldownt")
AddEventHandler("cooldownt", function()
	if ispriority == true then
		ispriority = false
		TriggerClientEvent('UpdatePriority', -1, ispriority)
	end
	Citizen.Wait(1)
	if ishold == true then
		ishold = false
		TriggerClientEvent('UpdateHold', -1, ishold)
	end
	Citizen.Wait(1)
	if cooldown == 0 then
		cooldown = 0
		cooldown = cooldown + 21
		TriggerClientEvent('chatMessage', -1, "ΠΡΟΕΙΔΟΠΟΙΗΣΗ", {255, 0, 0}, "^3Όλοι οι πολίτες πρέπει να περιμένουν 20 λεπτά πριν την έναρξη επόμενης ληστείας.")
		while cooldown > 0 do
			cooldown = cooldown - 1
			TriggerClientEvent('UpdateCooldown', -1, cooldown)
			Citizen.Wait(60000)
		end
	elseif cooldown ~= 0 then
		CancelEvent()
	end
end)

RegisterNetEvent("cancelcooldown")
AddEventHandler("cancelcooldown", function()
	Citizen.Wait(1)
	while cooldown > 0 do
		cooldown = cooldown - 1
		TriggerClientEvent('UpdateCooldown', -1, cooldown)
		Citizen.Wait(100)
	end
	
end)