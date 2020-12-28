Citizen.CreateThread(function()
    local fireBtn = 69
    local weaponDurability = 100
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, fireBtn) then
            if GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("weapon_pistol") then
                notify("Ez Clap")
            end
        end
    end
end)