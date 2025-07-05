fx_version 'adamant'
game 'rdr3'

author 'Johnnyb'
description = 'Campfire mod for RSG RedM Framework'
version '1.0.0'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

dependencies {
    'rsg-core',
    'rsg-menubase',
    'rsg-inventory'
}

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'