-------------------------------------
------- Cracked by DK.#0021 -------
------------------------------------- 

-- Callback to fetch vehicle data for an identifier
ESX.RegisterServerCallback("t1ger_carinsurance:fetchData", function (source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local vehicles = {}
    if xPlayer then
        MySQL.Async.fetchAll('SELECT * FROM '..Config.OwnedVehicles..' WHERE owner=@identifier', {['@identifier'] = xPlayer.getIdentifier()}, function(data)
            for k,v in pairs(data) do
                local vehicle = json.decode(v.vehicle)
                table.insert(vehicles, {vehicle = vehicle, plate = v.plate, insurance = v.insurance})
            end
            cb(vehicles)
        end)
    end
end)
