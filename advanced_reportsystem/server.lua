--Do NOT change stuff here! If something is wrong, please report it in the original topic. Go to the cfg.lua file to edit stuff.
--Do NOT change stuff here! If something is wrong, please report it in the original topic. Go to the cfg.lua file to edit stuff.
--Do NOT change stuff here! If something is wrong, please report it in the original topic. Go to the cfg.lua file to edit stuff.
--Do NOT change stuff here! If something is wrong, please report it in the original topic. Go to the cfg.lua file to edit stuff.


RegisterCommand(command, function(source, args, rawCommand)
	local args = table.concat(args, " ")
	TriggerClientEvent("chatMessage", -1, "_________________________________________")
	TriggerClientEvent("chatMessage", -1, announce, {255,0,0}, args)
	TriggerClientEvent("chatMessage", -1, "_________________________________________")
    TriggerClientEvent("chatMessage", source, bot, {255,0,0}, send_message.. ""..GetPlayerName(source))
	

MySQL.Async.execute("INSERT INTO advanced_report ( name, args) VALUES (@name,@args)", {['@name'] = GetPlayerName(source), ['@args'] = args})
	if txt then
		log = io.open("resources/"..GetCurrentResourceName().."/log.txt", "a")
	if log then
        log:write(" ////////// "..GetPlayerName(source).." :".. args .." ////////// ")
        log:write(report.. " ")
	else
        print("Log file doesnt exist")
    end
    log:close()
	end
end)



RegisterCommand(list, function(source, args) 
			local argString = table.concat(args, " ")
			MySQL.Async.fetchAll("SELECT * FROM advanced_report ORDER BY name DESC LIMIT 10",{}, --10 gives the limit of how many "lines" can get readed. every line above 10 will get readed as nil, So if you add more results you need to update this line!
			function(result)
			if IsPlayerAceAllowed(source, "report.cmds") then
			if result[1].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[1].name ..") - ^2".. result[1].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
			if result[2].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[2].name ..") - ^2".. result[2].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
			if result[3].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[3].name ..") - ^2".. result[3].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
			if result[4].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[4].name ..") - ^2".. result[4].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
			if result[5].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[5].name ..") - ^2".. result[5].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
			if result[6].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[6].name ..") - ^2".. result[6].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")			--want to add more data here? copy and paste the "Wait" and the "TriggerClientEvent" line, and change the number after "result" to a higher value then the last line (10) 	
			if result[7].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[7].name ..") - ^2".. result[7].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
			if result[8].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[8].name ..") - ^2".. result[8].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
			if result[9].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[9].name ..") - ^2".. result[9].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
			if result[10].args ~= nil then
				Wait(100)
				TriggerClientEvent("chatMessage", source, "^3("..announce..""..result[10].name ..") - ^2".. result[10].args)
				TriggerClientEvent("chatMessage", source, "_________________________________________")
													end
												end
											end
										end
									end
								end
							end
						end								-- hehe have never needed so many ends :D
					end
				end
			end
		end)
	end)

RegisterCommand(delete, function(source, rawCommand)
	if IsPlayerAceAllowed(source, "report.cmds") then
	MySQL.Async.execute("DELETE FROM advanced_report WHERE name = @name", { ['@name'] = GetPlayerName(source)})
	TriggerClientEvent("chatMessage", source, table_delete)
	end
end)


RegisterCommand(call, function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, "report.cmds") then
	local args = table.concat(args, " ")
TriggerClientEvent("chatMessage", -1, "_________________________________________")
TriggerClientEvent("chatMessage", -1, " ^1"..bot.." ^3"..hey.. " ^2"..args.." ^3"..support.. " "..ts3)
TriggerClientEvent("chatMessage", -1, "_________________________________________")
	end
end)


