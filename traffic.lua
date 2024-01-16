local config = {
    PedFrequency = 1.0,
    TrafficFrequency = 1.0
    --[[0.0 - 1.0]]
}

RegisterCommand(ChangeAIDensity, function(source, args, raw)

    config.PedFrequency = args[1]
    config.TrafficFrequency = args[1]
    
end)

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.PedFrequency)
        SetScenarioPedDensityMultiplierThisFrame(config.PedFrequency, config.PedFrequency)

        SetVehicleDensityMultiplierThisFrame(config.TrafficFrequency)
        SetRandomVehicleDensityMultiplierThisFrame(config.TrafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(config.TrafficFrequency)
    end
    
end)
