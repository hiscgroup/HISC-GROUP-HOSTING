local DISCORD_WEBHOOK = "https://discord.com/api/webhooks/795225304540119090/F4X_TTwrNmI2xFhA9COnZRpD4aNE8iIW4kclnVK0p1LCF_GPJGUo9vkdQCmEH0MCZi04"
function ExtractIdentifiers()
    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            identifierDiscord = v
            TriggerEvent("log", identifierDiscord)
        end
    end
end
    

RegisterServerEvent('log')
AddEventHandler('log', function(data)
        for k,v in pairs(GetPlayerIdentifiers(source))do
            if string.sub(v, 1, string.len("steam:")) == "steam:" then
              identifier = v
            elseif string.sub(v, 1, string.len("license:")) == "license:" then
              license = v
            elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
              xbl  = v
            elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
              playerip = v
            elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
              playerdiscord = v
              str = string.sub(v, 9)
            elseif string.sub(v, 1, string.len("live:")) == "live:" then
              liveid = v
            end
          end
        
          if playerip == nil then
            playerip = GetPlayerEndpoint(target)
            if playerip == nil then
              playerip = 'not found'
            end
          end
          if playerdiscord == nil then
            playerdiscord = 'not found'
          end
          if str == nil then
            str = "not found"
          end
          if liveid == nil then
            liveid = 'not found'
          end
          if xbl == nil then
            xbl = 'not found'
          end
    
    local connect = {
        {
            ["color"] = "255",
            ["title"] = "New Form | " ..data.plate.."-"..data.lastname,
            timestamp = os.date('!%Y-%m-%dT%H:%M:%S'),

            ["description"] = "First Name: \n `"..data.plate.."` \n Last Name: \n `"..data.lastname.."` \n Age: \n `"..data.age.."` \n Why: \n`"..data.why.."`\n Gender:\n `"..data.gender.."`".."\n REGNUM RP:\n".."<@"..str..">",
	        ["footer"] = {
                ["text"] = "Ambulance application form",
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = "Ambulance Forms",  avatar_url = "https://upload.wikimedia.org/wikipedia/el/4/44/EKAB_logo.png",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)



RegisterServerEvent('log2')
AddEventHandler('log2', function(data)

    for k,v in pairs(GetPlayerIdentifiers(source))do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
          identifier = v
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
          license = v
        elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
          xbl  = v
        elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
          playerip = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
          playerdiscord = v
          str = string.sub(v, 9)
        elseif string.sub(v, 1, string.len("live:")) == "live:" then
          liveid = v
        end
      end
    
      if playerip == nil then
        playerip = GetPlayerEndpoint(target)
        if playerip == nil then
          playerip = 'not found'
        end
      end
      if playerdiscord == nil then
        playerdiscord = 'not found'
      end
      if str == nil then
        str = "not found"
      end
      if liveid == nil then
        liveid = 'not found'
      end
      if xbl == nil then
        xbl = 'not found'
      end

    local connect = {
        {
            ["color"] = "255",
            ["title"] = "New Complaint | " ..data.ft.."-"..data.ln,
            ["description"] = "First Name: \n `"..data.ft.."` \n Last Name: \n `"..data.ln.."`\n Reason: \n `"..data.reason.."`".."\n Date: \n `"..data.date.."`".."\n REGNUM RP:\n".."<@"..str..">",
	        ["footer"] = {
                ["text"] = "Ambulance Complaint",
            },
            image = {
                url = data.myImg
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = "Ambulance Complaint",  avatar_url = "https://static.wikia.nocookie.net/gta/images/5/5e/Sceau-lspd-gtav.png/revision/latest?cb=20140916194909&path-prefix=fr",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)


