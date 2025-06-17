lib.locale(Config.Locale)
local secondes = 1000

RegisterNetEvent('MC_fixkit:fixcar')
AddEventHandler('MC_fixkit:fixcar', function()
	lib.progressCircle({
		label = locale("fixing"),
		duration = Config.Time * secondes,
		position = 'middle',
		useWhileDead = false,
		canCancel = false,
		disable = {
			car = true,
		},
		anim = {
        	dict = 'mini@repair',
        	clip = 'fixing_a_ped'
    	},
		disable = {
			move = true,
			car = true,
			combat = true,
			sprint = true,
		}
	})
	TriggerServerEvent('ox_inventory:removeItem', 'fixkit', 1)
end)

RegisterNetEvent('MC_fixkit:fixcaritem')
AddEventHandler('MC_fixkit:fixcaritem', function()
	local function getClosestVehicle(radius)
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local vehicle = GetClosestVehicle(playerCoords, radius, 0, 70) 
    return vehicle
end
local detectionRadius = 10.0
local vehicle = getClosestVehicle(detectionRadius)
if vehicle and DoesEntityExist(vehicle) then
	lib.progressCircle({
		label = locale("fixing"),
		duration = Config.Time * secondes,
		position = 'middle',
		useWhileDead = false,
		canCancel = false,
		disable = {
			car = true,
		},
		anim = {
        	dict = 'mini@repair',
        	clip = 'fixing_a_ped'
    	},
		disable = {
			move = true,
			car = true,
			combat = true,
			sprint = true,
		}
	})
		SetVehicleFixed(vehicle)
        SetVehicleDeformationFixed(vehicle)
        SetVehicleUndriveable(vehicle, false)
        SetVehicleEngineOn(vehicle, true, true)
		TriggerServerEvent('ox_inventory:removeItem', 'fixkit', 1)
end
end)
