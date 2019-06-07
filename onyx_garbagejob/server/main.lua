

RegisterServerEvent("onyx_garbagejob:tryStartJob")
AddEventHandler("onyx_garbagejob:tryStartJob", function(location, tier)
	-- You can do checkperms or something here

        TriggerClientEvent("onyx_garbagejob:startJob", source, location, tier)
    -- END
end)


RegisterServerEvent("givemoneyfortrash")
AddEventHandler("givemoneyfortrash", function(trash)
	-- Do something when dropping of trash, like give money or exp
end)


RegisterServerEvent("onyx_garbagejob:pickupJob")
AddEventHandler("onyx_garbagejob:pickupJob", function()

end)

AddEventHandler("chatMessage",function(source,name,msg)
	if msg:sub(1,4) == "/loc" then
		TriggerClientEvent("gd:pos",source,msg)
		CancelEvent()
	end
end)

AddEventHandler("chatMessage",function(source,name,msg)
	if msg:sub(1,4) == "/stp" then
		TriggerClientEvent("onyx_garbagejob:stopjob",source)
		CancelEvent()
	end
end)


function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end


RegisterServerEvent("gd:pos")
AddEventHandler("gd:pos", function(text, pos)
    local name = text:sub(6)
    local str = string.format('{name = "%s", x = %f, y = %f, z = %f},', name, pos.x, pos.y, pos.z)
    print(str)
    local file = io.open("markers.dev", "a+")
    file:write(str .. "\n")
    file:close()
end)
