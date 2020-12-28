Citizen.CreateThread(function()
    local fireBtn = 69
    local weaponDurability = 100
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, fireBtn) then
            if GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("weapon_pistol") then
                local weapondmg = math.random(20)
                weaponDurability = weaponDurability - weapondmg
                print(weaponDurability)
                if weaponDurability == 0 then
                    alert("~r~Weapon is too damaged!")
                end
            end
        end
    end
end)