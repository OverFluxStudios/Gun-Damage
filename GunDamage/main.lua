RegisterNetEvent("output")
AddEventHandler("output", function (arg)
    TriggerEvent("chatMessage", "[Success] ", {0,255,0}, "Added, " .. arg .. " into the database")
end)

Citizen.CreateThread(function()
    local fireBtn = 69
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, fireBtn) then
            local weapondmg = math.random(20)
            if GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("weapon_pistol") then
                local canFire = true
                local weaponDurability = 100
                weaponDurability = weaponDurability - weapondmg
                notify(weaponDurability)
                if weaponDurability <= 0 then
                    alert("~r~Weapon~r~ is too damaged!")
                    RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("weapon_pistol"))
                    canFire = false
                    while canFire == false do
                        Citizen.Wait(1)
                        DisablePlayerFiring(GetPlayerPed(-1), true)
                    end
                end
            end
        end
    end
end)