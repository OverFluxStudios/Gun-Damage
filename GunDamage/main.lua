Citizen.CreateThread(function()
    local fireBtn = 69
    local weaponDurability = 100
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, fireBtn) then
            local weapondmg = math.random(20)
            if GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("weapon_pistol") then
                weaponDurability = weaponDurability - weapondmg
                notify(weaponDurability)
                if weaponDurability <= 0 then
                    DisablePlayerFiring(GetPlayerPed(-1), true)
                    alert("~r~Weapon is too damaged!")
                end
            end
        end
    end
end)