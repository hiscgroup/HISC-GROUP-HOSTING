fx_version 'bodacious'
game 'gta5'

name 'Sistema de anuncios para esx'
author 'JmGarcia - https://github.com/JmGarciaYT'
version 'v1'

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js', 
	'html/css/style.css',
	'html/imagenes/lspd.jpg',
	'html/imagenes/safd.jpg',
	'html/imagenes/lsc.jpg',
	'html/imagenes/taxi.jpg'
}

client_scripts {
	'client/client.lua',
	'client/depracated.lua',
	'config.lua'
}

server_scripts {
	'server/server.lua',
	'PersistentAlert',
	'@mysql-async/lib/MySQL.lua',
	'config.lua'
}

exports {
	'SendAlert',
}

dependencies {
	'es_extended',
}
