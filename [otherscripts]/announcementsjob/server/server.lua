ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local quitardinero = false

function pagaranuncios (source, amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local getmoney = xPlayer.getMoney()
    local dinero = Config.pagartrabajo
    if  getmoney >= dinero then
    	  xPlayer.removeMoney(dinero)
     	   quitardinero = true
  	    else
        quitardinero = false
    end
end

RegisterCommand("adpol", function(source, args)
local xPlayer = ESX.GetPlayerFromId(source)
local argString = table.concat(args, " ")
local _source = source
	if xPlayer.job.name == 'police' then
	  pagaranuncios(source, amount)
		if quitardinero then
			TriggerClientEvent('jmgarcia_anuncios:client:SendAlert', -1, { type = 'lspd', text = argString})
		else
			print('den exeis lefta')
		end
	else
		print('den eisai astynomia')	
    end
end, false)

RegisterCommand("adamb", function(source, args)
local xPlayer = ESX.GetPlayerFromId(source)
local argString = table.concat(args, " ")
local _source = source
	if xPlayer.job.name == 'ambulance' then
	  pagaranuncios(source, amount)
		if quitardinero then
			TriggerClientEvent('jmgarcia_anuncios:client:SendAlert', -1, { type = 'ems', text = argString})
		else
			print('den exeis lefta')
		end
	else
		print('Den eisai E.K.A.B')	
    end
end, false)

RegisterCommand("adhoonigan", function(source, args)
local xPlayer = ESX.GetPlayerFromId(source)
local argString = table.concat(args, " ")
local _source = source
	if xPlayer.job.name == 'hoonigans' then
	  pagaranuncios(source, amount)
		if quitardinero then
			TriggerClientEvent('jmgarcia_anuncios:client:SendAlert', -1, { type = 'mecanico', text = argString})
		else
			print('No tienes dinero para pagar el anuncio')
		end
	else
		print('Den eisai Hoonigan')	
    end
end, false)

RegisterCommand("adtaxi", function(source, args)
local xPlayer = ESX.GetPlayerFromId(source)
local argString = table.concat(args, " ")
local _source = source
	if xPlayer.job.name == 'taxi' then
	  pagaranuncios(source, amount)
		if quitardinero then
			TriggerClientEvent('jmgarcia_anuncios:client:SendAlert', -1, { type = 'taxi', text = argString})
		else
			print('No tienes dinero para pagar el anuncio')
		end
	else
		print('Den eisai tarifas')	
    end
end, false)





