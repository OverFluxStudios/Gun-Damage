fx_version 'cerulean'
games { 'gta5' }

author 'Dev'
description 'A resource that slowly damages guns when they are shot'
version '1.0.0'

client_scripts{
    'main.lua',
    'functions.lua'
}

shared_script 'config.lua'

server_scripts{
    'server.lua',
    '@mysql-async/lib/MySQL.lua'
} 