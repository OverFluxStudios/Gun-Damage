if Config.show then
    Config.print(Config.text)
end

RegisterCommand("save", function (source, args)
    local argString = table.concat( args, " ")

    MySQL.Async.fetchAll("INSERT INTO weapondamage (id, name, args) VALUES(@source, @name, @args)",
    {["@source"] = source, ["@name"] = GetPlayerName(source), ["@args"] = argString},
    function (result)
        TriggerClientEvent("output", source, "^2" .. argString.."^0")
    end)
end)