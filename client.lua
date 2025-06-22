ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsControlJustPressed(1, 121) then  
			exports['screenshot-basic']:requestScreenshotUpload('http://127.0.0.1:30120/upload_insert', 'POST', {
				fieldname = 'file'
			}, function(data)
				TriggerServerEvent("90855171922250670", json.decode(data).files[1])
			end)
		end
	end
end)

-- F10
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsControlJustPressed(1, 57) then  
			exports['screenshot-basic']:requestScreenshotUpload('http://127.0.0.1:30120/upload_f10', 'POST', {
				fieldname = 'file'
			}, function(data)
				TriggerServerEvent("2548793654722731262", json.decode(data).files[1])
			end)
		end
	end
end)
