-- Script original creado por iTzCrutchie
-- Editado y adaptado por Carri - ByLcarma para ApexDev Network

fx_version 'cerulean'
lua54 'yes'
game 'gta5'

description 'Sistema de lavado de dinero para ESX - Configurable por zonas y tasas'
version '0.2.0'

author 'iTzCrutchie'
editor 'Carri - ByLcarma (ApexDev Network)'

client_scripts {
    '@es_extended/locale.lua', -- Carga de localización de ESX
    'locales/en.lua',
    'locales/es.lua',
    'config.lua',              -- Archivo de configuración
    'client/main.lua',         -- Código principal del cliente
}

server_scripts {
    '@es_extended/locale.lua', -- Carga de localización de ESX en el servidor
    'locales/en.lua',
    'locales/es.lua',
    'config.lua',              -- Archivo de configuración
    'server/main.lua',         -- Código principal del servidor
    'version.lua',             -- Gestión de versión
}

dependencies {
    'es_extended',             -- Dependencia de ESX
}
