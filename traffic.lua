local config = {
    PedFrequency = 1.0,
    TrafficFrequency = 1.0
    --[[0.0 - 1.0]]
}

function ChangeFrequency(num)
    
    config.PedFrequency = num
    config.TrafficFrequency = num

end

RegisterCommand(ChangeAIDensity, ChangeFrequency(), false)

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
