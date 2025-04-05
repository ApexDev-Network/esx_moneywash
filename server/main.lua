local ESX = exports['es_extended']:getSharedObject()

-- Función para convertir segundos en formato HH:MM:SS
local function secondsToClock(seconds)
    local seconds = tonumber(seconds)
    if seconds <= 0 then
        return "00:00:00"
    else
        local hours = string.format("%02.f", math.floor(seconds / 3600))
        local mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)))
        local secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))
        return hours .. ":" .. mins .. ":" .. secs
    end
end

-- Evento para lavar dinero
RegisterServerEvent('esx_moneywash:washMoney')
AddEventHandler('esx_moneywash:washMoney', function(amount, zone)
    local xPlayer = ESX.GetPlayerFromId(source) -- Obtén al jugador
    local tax, timer, enableTimer = nil, nil, false

    -- Buscar configuración de la zona
    for k, spot in pairs(Config.Zones) do
        if zone == k then
            tax = spot.TaxRate
            enableTimer = spot.enableTimer
            timer = spot.timer
        end
    end

    -- Validar la cantidad ingresada y calcular dinero limpio
    amount = ESX.Math.Round(tonumber(amount))
    local washedCash = amount * tax
    local washedTotal = ESX.Math.Round(tonumber(washedCash))

    if enableTimer then
        -- Lavado con temporizador
        local timeClock = ESX.Math.Round(timer / 1000)

        if amount > 0 and xPlayer.getAccount('black_money').money >= amount then
            xPlayer.removeAccountMoney('black_money', amount) -- Quitar dinero sucio
            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_have_washed_waiting') .. secondsToClock(timeClock))
            
            Citizen.Wait(timer) -- Esperar el tiempo configurado
            
            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_have_received') .. ESX.Math.GroupDigits(washedTotal) .. _U('clean_money'))
            xPlayer.addMoney(washedTotal) -- Agregar dinero limpio
        else
            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
        end
    else
        -- Lavado instantáneo
        if amount > 0 and xPlayer.getAccount('black_money').money >= amount then
            xPlayer.removeAccountMoney('black_money', amount) -- Quitar dinero sucio
            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_have_washed') .. ESX.Math.GroupDigits(amount) .. _U('dirty_money') .. _U('you_have_received') .. ESX.Math.GroupDigits(washedTotal) .. _U('clean_money'))
            xPlayer.addMoney(washedTotal) -- Agregar dinero limpio
        else
            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
        end
    end
end)
