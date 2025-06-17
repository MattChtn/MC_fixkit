exports.ox_target:addGlobalVehicle({
    {
        name = 'fix_car',
        icon = 'fa-solid fa-screwdriver-wrench',
        label = locale("fixcar"),
        items = "fixkit",
        onSelect = function(data)
            TriggerEvent('MC_fixkit:fixcar')
            Wait(5000)
            local vehicle = data.entity
	        if DoesEntityExist(vehicle) then
		        SetVehicleFixed(vehicle)
		        SetVehicleDeformationFixed(vehicle)
		        SetVehicleUndriveable(vehicle, false)
		        SetVehicleEngineOn(vehicle, true, true)
	        end
        end
    },
})

lib.locale(Config.Locale)
