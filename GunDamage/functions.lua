function  alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function notify(str)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(str)
    DrawNotification(true, false)
end