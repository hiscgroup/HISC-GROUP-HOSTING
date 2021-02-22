local hook = 'https://discord.com/api/webhooks/807931550582177833/jp0dAS3VV6zkuqbYpcms-g2rXNxt6MRdDjaWuUiyHOuKFE2vFNE31FYF4a7sRGhZQIWK'

RegisterServerEvent('aimlogs:log')
AddEventHandler('aimlogs:log', function(pedId)
    local _source = source
    local name = GetPlayerName(_source)
    local targetName = GetPlayerName(pedId)
    PerformHttpRequest(hook, function(err, text, headers) end, 'POST', json.encode({embeds={{title="__**Aim Logs**__",description="\nPlayer name: "..name.. "`[".._source.."]`\nIs aiming: "..targetName.." `["..pedId.."]`",color=16711680}}}), { ['Content-Type'] = 'application/json' })
end)
