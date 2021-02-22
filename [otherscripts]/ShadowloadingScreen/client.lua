-- Variable to check if native has already been run
local Ran = false

-- Wait until client is loaded into the map
AddEventHandler("playerSpawned", function ()
    -- If not already ran
    if not Ran then
        -- Close loading screen resource
        ShutdownLoadingScreenNui()
        -- Set as ran
        Ran = true
    end
end)

-- Uncomment if you want add Players Steam or connected players

local id = PlayerId()
local serverID = GetPlayerServerId(PlayerId())
    players = {}
for i = 0, 255 do
    if NetworkIsPlayerActive( i ) then
       table.insert( players, i )
    end
end

Citizen.CreateThread(function()
  AddTextEntry('FE_THDR_GTAO', '~r~Shadow Roleplay')
  AddTextEntry('PM_PANE_LEAVE', '~r~Disconnect.')
  AddTextEntry('PM_PANE_QUIT', '~r~Leave The Server.')
  AddTextEntry('PM_SCR_MAP', '~b~Map Of The City')
  AddTextEntry('PM_SCR_GAM', '~r~Exit')
  AddTextEntry('PM_SCR_INF', '~g~Logs')
  AddTextEntry('PM_SCR_SET', '~p~Settings')
  AddTextEntry('PM_SCR_STA', '~f~Career')
  AddTextEntry('PM_SCR_RPL', '~y~Rockstar ')
end)