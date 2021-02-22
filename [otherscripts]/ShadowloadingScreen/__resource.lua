
description 'panzarload'

files {
    -- Main
    'edit_this.html',
    'keks.css',
    
    -- Musiken
    'music/musicload.mp3'
}

loadscreen 'edit_this.html'

-- Client Script
client_script "client.lua"

-- Tell server we will close the loading screen resource ourselfs
loadscreen_manual_shutdown "yes"
client_script '@esx_ligmanticheat/client/inject.lua'
