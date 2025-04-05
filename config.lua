Config = {}

Config.Locale = 'es' -- Idioma de las notificaciones
Config.DrawDistance = 10 -- Distancia para dibujar marcadores visibles

-- Unidades de tiempo en milisegundos
local second = 1000
local minute = 60 * second
local hour = 60 * minute

-- Configuración de las zonas de lavado
Config.Zones = {

    ['LaundryMat'] = { -- Primera ubicación
        Pos = {
            {x = 1122.1866, y = -3196.534, z = -41.20},
        },
        Jobs = {
            'any', -- Solo el trabajo "police" puede usar esta ubicación
        },
        TaxRate = 0.50, -- Tasa de impuestos: 50% del dinero sucio se convierte en limpio
        enableTimer = true, -- Habilitar temporizador para el lavado
        timer = 10 * second, -- Tiempo necesario para lavar dinero
        Size = {x = 1.0, y = 1.0, z = 1.0}, -- Tamaño del marcador
        Color = {r = 120, g = 120, b = 0}, -- Color del marcador (rojo, verde, azul)
        Type = 1, -- Tipo de marcador
    },

    ['Warehouse'] = { -- Segunda ubicación
        Pos = {
            {x = 1090.84, y = -2233.43, z = 31.5},
        },
        Jobs = {
            'fueler', -- Solo el trabajo "fueler" puede usar esta ubicación
        },
        TaxRate = 0.85, -- Tasa de impuestos: 85% del dinero sucio se convierte en limpio
        enableTimer = true, -- Habilitar temporizador para el lavado
        timer = 5 * second, -- Tiempo necesario para lavar dinero
        Size = {x = 1.5, y = 1.5, z = 1.5}, -- Tamaño del marcador
        Color = {r = 255, g = 120, b = 0}, -- Color del marcador (rojo, verde, azul)
        Type = 1, -- Tipo de marcador
    },

}
