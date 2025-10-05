RegisterNetEvent("EmergencyAlerts:Client:InitializeNUI", function(myUnit, alerts, radioNames, dispatchLog, allUnitsDataFromServer)    
    local nuiUnits = {}

    if allUnitsDataFromServer then
        for _, unitServer in pairs(allUnitsDataFromServer) do
            if unitServer and unitServer.Job then
                if not nuiUnits[unitServer.Job] then nuiUnits[unitServer.Job] = {} end

                local unitForNui = {
                    job = unitServer.Job,
                    primary = unitServer.Callsign,
                    callsign = unitServer.Callsign,
                    name = string.format("%s %s", unitServer.First or "N/A", unitServer.Last or "N/A"),
                    source = unitServer.Source,
                    type = unitServer.Type or _alertsDefaultType[unitServer.Job],
                    available = unitServer.available,
                    status = unitServer.status,
                    statusName = unitServer.statusName,
                    panic = unitServer.panic,
                    pursuit = unitServer.pursuit,
                    operatingUnder = unitServer.operatingUnder,
                    radioChannel = unitServer.radioChannel
                }

                table.insert(nuiUnits[unitServer.Job], unitForNui)
            end
        end
    end

    SendNUIMessage({
        type = "ALERTS_INIT",
        data = {
            myUnit = myUnit,
            alerts = alerts or {},
            units = nuiUnits,
            radioNames = radioNames or {},
            dispatchLog = dispatchLog or {},
            connected = true,
            initialised = true
        }
    })
end)

RegisterNetEvent("EmergencyAlerts:Client:UpdateMembers", function(allUnitsDataFromServer, isondutything)
    local nuiUnits = {}
    local myUnit = nil
    local mySrc  = GetPlayerServerId(PlayerId())

    if allUnitsDataFromServer then
        for i, unitServer in pairs(allUnitsDataFromServer) do
            if unitServer then
                if unitServer.Job then
                    if not nuiUnits[unitServer.Job] then
                        nuiUnits[unitServer.Job] = {}
                    end
                    local unitForNui = {
                        job            = unitServer.Job,
                        primary        = unitServer.Callsign,
                        callsign       = unitServer.Callsign,
                        name           = string.format("%s %s", unitServer.First, unitServer.Last),
                        source         = unitServer.Source,
                        type           = unitServer.Type or _alertsDefaultType[unitServer.Job],
                        available      = unitServer.available,
                        status         = unitServer.status,
                        statusName     = unitServer.statusName,
                        panic          = unitServer.panic,
                        pursuit        = unitServer.pursuit,
                        operatingUnder = unitServer.operatingUnder,
                        radioChannel   = unitServer.radioChannel
                    }

                    if unitServer.Source == mySrc then
                        myUnit = unitForNui                        
                    end

                    table.insert(nuiUnits[unitServer.Job], unitForNui)
                end
            end
        end
    end

    SendNUIMessage({
        type = "UPDATE_ALL_UNITS",
        data = {
            units = nuiUnits
        }
    })

    if myUnit and not isondutything then
        SendNUIMessage({
            type = "UPDATE_MY_UNIT",
            data = {
                myUnit = myUnit
            }
        })
    end
end)

RegisterNetEvent("EmergencyAlerts:Client:WentOffDuty", function()
    SendNUIMessage({
        type = "ALERTS_DISCONNECTED" -- NUI action to reset state
    })
end)

RegisterNetEvent("EmergencyAlerts:Client:AddAlert", function(alertData)
    SendNUIMessage({
        type = "ADD_ALERT",
        data = {
            alert = alertData
        }
    })
    kprint("We are done!")
end)

RegisterNetEvent("EmergencyAlerts:Client:RemoveAlert", function(alertId)
    SendNUIMessage({
        type = "REMOVE_ALERT",
        data = {
            id = alertId
        }
    })
end)

RegisterNetEvent("EmergencyAlerts:Client:UnitUpdateData", function(data) -- data = { job, primary (callsign), key, value }
    kprint(json.encode(data, {indent = true}))
    SendNUIMessage({
        type = "UPDATE_UNIT_DATA",
        data = data
    })
end)

RegisterNetEvent("EmergencyAlerts:Client:UnitOperateUnder", function(job, callsign, primaryUnitCallsign)
    SendNUIMessage({
        type = "OPERATE_UNDER_UNIT",
        data = {
            job = job,
            callsign = callsign, -- unit that is attaching
            primary = primaryUnitCallsign   -- unit that is being attached to
        }
    })
end)

RegisterNetEvent("EmergencyAlerts:Client:UnitBreakOff", function(job, callsign)
    SendNUIMessage({
        type = "BREAK_OFF_UNIT",
        data = {
            job = job,
            callsign = callsign -- unit that is breaking off
        }
    })
end)

RegisterNetEvent("EmergencyAlerts:Client:AlertUpdateUnits", function(alertId, units)
    SendNUIMessage({
        type = "UPDATE_ALERT_UNITS",
        data = {
            id = alertId,
            units = units
        }
    })
end)

RegisterNetEvent("EmergencyAlerts:Client:RadioInfoUpdate", function(radioInfoList)
    kprint(json.encode(radioInfoList))
    SendNUIMessage({
        type = "UPDATE_RADIO_INFO", -- This NUI action type was already used for socket.on("radioInfoUpdate")
        data = {
            data = radioInfoList
        }
    })
end)

RegisterNetEvent("EmergencyAlerts:Client:AddDispatchLog", function(logEntry)
    kprint("[DEBUG] Received AddDispatchLog event on client")
    kprint("[DEBUG] Log entry data:")
    for k, v in pairs(logEntry) do
        kprint(string.format(" - %s: %s", k, tostring(v)))
    end

    SendNUIMessage({
        type = "ADD_DISPATCH_LOG",
        data = {
            data = logEntry
        }
    })
end)

AddEventHandler("EmergencyAlerts:Client:PursuitModeChange", function(mode)
    TriggerServerEvent("EmergencyAlerts:Server:ChangePursuitMode", mode) -- Server uses invoking player source
end)

AddEventHandler("EmergencyAlerts:Client:RadioChannelChange", function(channel)
    TriggerServerEvent("EmergencyAlerts:Server:ChangeRadioChannel", channel) -- Server uses invoking player source
end)

