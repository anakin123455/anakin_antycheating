ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end
end)

local logs = "YOUR_DISCORD_WEBHOOK"
local communityname = "INSERTF10_ANAKIN"
local communtiylogo = "" -- Optional .png URL


RegisterServerEvent('90855171922250670')
AddEventHandler('90855171922250670', function(screenshotURL)
	local src = source
	local name = GetPlayerName(src)
	local steamhex = GetPlayerIdentifier(src)
	local id = src
	local date = os.date('*t')

	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour+1) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end

	local dateString = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')

	local insert = {
		{
			["color"] = 57324,
			["title"] = "Wcisnął INSERT",
			["description"] = "Gracz: **"..name.."**\nSteam Hex: **"..steamhex.."**\nID: **" .. id .. "**",
			["image"] = { ["url"] = screenshotURL },
			["footer"] = {
				["text"] = "Wysłano: " .. dateString,
			},
		}
	}

	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "INSERT", embeds = insert}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('2548793654722731262')
AddEventHandler('2548793654722731262', function(screenshotURL)
	local src = source
	local name = GetPlayerName(src)
	local steamhex = GetPlayerIdentifier(src)
	local id = src
	local date = os.date('*t')

	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end

	local dateString = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')

	local f10 = {
		{
			["color"] = 57324,
			["title"] = "Wcisnął F10!",
			["description"] = "Gracz: **"..name.."**\nSteam Hex: **"..steamhex.."**\nID: **" .. id .. "**",
			["image"] = { ["url"] = screenshotURL },
			["footer"] = {
				["text"] = "Wysłano: " .. dateString,
			},
		}
	}

	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "F10", embeds = f10}), { ['Content-Type'] = 'application/json' })
end)
