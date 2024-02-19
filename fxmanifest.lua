fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'DFNZ'
description 'SIMPLE TELEPORT USING OX_TARGET'
version '1.0.0'

shared_script {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

files {
    "locales/*.json"
}

client_scripts {
    "shared/config.lua",
    "client/client.lua"
}

server_scripts {
    "shared/config.lua",
    "server/server.lua"
}