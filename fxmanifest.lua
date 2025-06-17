fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'MattChtn'
description 'Un simple script de réparation de véhicule | A simple vehicle repair script'

files {
	'locales/*.json'
}

client_scripts {
	'client/events.lua',
	'client/target.lua',
	'client/esx.lua',
}

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

dependencies {
	'ox_lib',
	'ox_target',
	'ox_inventory',
	'es_extended',
}
