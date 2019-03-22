-- will be implemented soon
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		
local years, months, days, hours, minutes, seconds = Citizen.InvokeNative(0x50C7A99057A69748, Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt(), Citizen.PointerValueInt())
    hour = hours
    minute = minutes
	day = days
	month = months
	year = years
	second = seconds
	currenttime = "time sended: "..hour.." : "..minute.." : "..day.." : "..month.." : "..year.." : "..second
	TriggerServerEvent("currenttime", currenttime)
	end
end)
