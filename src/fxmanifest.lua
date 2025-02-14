fx_version 'cerulean'
game 'gta5'

name 'bondrix-core'
author 'Bondrix'
description 'The core functionality of the framework.'
repository 'https://github.com/bondrix/core'
version '1.0.0'

dependencies {
    'bondrix-lib'
}

client_scripts {
    'client/main.lua'
}
shared_scripts {
    'shared/main.lua',
    'shared/config.lua'
}
server_scripts {
    'server/main.lua'
}
