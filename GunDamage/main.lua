Citizen.CreateThread(function()
    local fireBtn = 69
    local player = GetPlayerPed(-1)
    local weaponDurability = 100
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, fireBtn) then
            notify("Ez Clap")
        end
    end
end)