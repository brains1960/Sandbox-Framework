-- NUI Callbacks - Modified to trigger server events instead of relying on WebSocket

RegisterNUICallback("CloseAlerts", function(data, cb)
	cb("OK")
	EmergencyAlerts:Close() -- Assuming EmergencyAlerts:Close() is a client-side Lua function to hide NUI
end)

-- This callback is triggered when the NUI (reducer.js) processes an ADD_ALERT action.
-- It handles client-side effects like sounds and blips.
RegisterNUICallback("ReceiveAlert", function(data, cb)
	if data and data.id then
		if data.panic then
			Sounds.Play:Distance(15, "panic.ogg", 0.5)
		else
			Sounds.Play:One("alert_normal.ogg", 0.5)
		end

		if data.blip and type(data.blip) == "table" and data.location ~= nil then
			data.blip.id = string.format("emrg-%s", data.id)
			data.blip.title = string.format("%s", data.title)

			-- Ensure Blips component is available and _alertBlips table is initialized
            if not _alertBlips then _alertBlips = {} end
			local eB = Blips:Add(data.blip.id, data.blip.title, data.location, data.blip.icon, data.blip.color, data.blip.size, 2, false, data.blip.flashing)
			SetBlipFlashes(eB, data.panic) -- was isPanic, should be data.panic
			table.insert(_alertBlips, {
				id = data.blip.id,
				time = GetCloudTimeAsInt() + (data.blip.duration or 300), -- Default duration if not provided
				blip = eB,
			})

			if data.isArea then -- was isArea, should be data.isArea
				local eAB = AddBlipForRadius(data.location.x, data.location.y, data.location.z, 100.0)
				SetBlipColour(eAB, data.blip.color)
				SetBlipAlpha(eAB, 90)
				table.insert(_alertBlips, {
					id = data.blip.id .. "-area", -- Ensure unique ID for area blip
					time = GetCloudTimeAsInt() + (data.blip.duration or 300),
					blip = eAB,
				})
			end
		end
	end
	cb("OK")
end)

-- This callback is triggered when the NUI (reducer.js) processes a REMOVE_ALERT action.
-- It handles client-side blip removal.
RegisterNUICallback("RemoveAlert", function(data, cb) -- This is for client-side blip removal when NUI state changes
	if data and data.id then
		local id = string.format("emrg-%s", data.id)
        Blips:Remove(id)
        Blips:Remove(id .. "-area") -- Remove area blip too

        if _alertBlips then
            for i = #_alertBlips, 1, -1 do
                local v = _alertBlips[i]
                if v.id == id or v.id == (id .. "-area") then
                    if DoesBlipExist(v.blip) then RemoveBlip(v.blip) end
                    table.remove(_alertBlips, i)
                end
            end
        end
	end
	cb("OK")
end)

RegisterNUICallback("AssignedToAlert", function(data, cb) -- Sound notification when assigned
	UISounds.Play:FrontEnd(-1, "Menu_Accept", "Phone_SoundSet_Default")
	cb("OK")
end)

RegisterNUICallback("RouteAlert", function(data, cb)
	cb("OK")
	if data.location then
		UISounds.Play:FrontEnd(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET")
		EmergencyAlerts:Close() -- Assuming this hides NUI

		if data.blip then -- Create/update blip for routing
            if not _alertBlips then _alertBlips = {} end
			local f = false
            local blipId = string.format("emrg-%s", data.id)
			for k, v in ipairs(_alertBlips) do
				if v.id == blipId then
					v.time = GetCloudTimeAsInt() + (data.blip.duration or 300)
					f = true
					break
				end
			end

			if not f then
				local eB = Blips:Add(blipId, data.title, data.location, data.blip.icon, data.blip.color, data.blip.size, 2, false, data.blip.flashing)
				table.insert(_alertBlips, {
					id = blipId,
					time = GetCloudTimeAsInt() + (data.blip.duration or 300),
					blip = eB,
				})
				SetBlipFlashes(eB, data.panic)
			end
		end

		ClearGpsPlayerWaypoint()
		SetNewWaypoint(data.location.x, data.location.y)
		Notification:Info("Alert Location Marked") -- Assuming Notification component exists
	end
end)

RegisterNUICallback("ViewCamera", function(data, cb) -- Existing functionality, seems fine
	cb("OK")
	if data.camera then
		UISounds.Play:FrontEnd(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET")
		EmergencyAlerts:Close()
		Callbacks:ServerCallback("CCTV:ViewGroup", data.camera)
	end
end)

RegisterNUICallback("SwapToRadio", function(data, cb) -- Existing functionality, seems fine
kprint(json.encode(data, { indent = true }))
	cb("OK")
	UISounds.Play:FrontEnd(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET")
	TriggerEvent("Radio:Client:SetChannelFromInput", data.radio)
end)

-- New NUI Callbacks to replace socket.emit functionalities
-- These will be called from the NUI (React components / middleware)

RegisterNUICallback("NUI:ChangeUnitType", function(data, cb)
    -- data should be { job, primary (callsign), type }
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:ChangeUnit", data.job, data.primary, data.type)
    cb("OK")
end)

RegisterNUICallback("NUI:ChangeAvailability", function(data, cb)
    -- data should be { job, primary (callsign) }
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:ChangeAvailability", data.job, data.primary)
    cb("OK")
end)

RegisterNUICallback("NUI:OperateUnderUnit", function(data, cb)
    -- data should be { job, primary (attaching_callsign), unit (target_callsign) }
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:OperateUnderUnit", data.job, data.primary, data.unit)
    cb("OK")
end)

RegisterNUICallback("NUI:BreakOffUnit", function(data, cb)
    -- data should be { job, primary (breaking_callsign), unit (was_attached_to_callsign, though server might not need it) }
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:BreakOffUnit", data.job, data.primary)
    cb("OK")
end)

RegisterNUICallback("NUI:ToggleUnitAttachment", function(data, cb)
    kprint("[NUI:ToggleUnitAttachment] Data:", json.encode(data))
    kprint("[NUI:ToggleUnitAttachment] Alert ID:", data.id, "Attach:", json.encode(data.attach))
    TriggerServerEvent("EmergencyAlerts:Server:ToggleUnitAttachment", data.id, data.attach)
    cb("OK")
end)

RegisterNUICallback("NUI:AddRadioInfo", function(data, cb)
    -- data should be { data (radio object) }
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:AddRadioInfo", data)
    cb("OK")
end)

RegisterNUICallback("NUI:UpdateRadioInfo", function(data, cb)
    -- data should be { id (radioId), data (updated radio object) }
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:UpdateRadioInfo", data.id, data)
    cb("OK")
end)

RegisterNUICallback("NUI:RemoveRadioInfo", function(data, cb)
    -- data should be { id (radioId) }
    -- Original socket.js also sent `data.data` but server event might only need ID
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:RemoveRadioInfo", data.id)
    cb("OK")
end)

RegisterNUICallback("NUI:RemoveAlert", function(data, cb) -- For NUI initiated server-side alert removal
    -- data should be { id (alertId) }
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:HandleRemoveAlert", data.id)
    cb("OK")
end)

RegisterNUICallback("NUI:LogMessage", function(data, cb)
    -- data should be { message }
	kprint(json.encode(data, { indent = true }))

    TriggerServerEvent("EmergencyAlerts:Server:LogCustomMessage", data.message)
    cb("OK")
end)

-- PursuitMode and RadioChannelChange are handled by client events in events.lua that directly TriggerServerEvent
-- So no NUI callbacks needed for those specifically, NUI will dispatch Redux actions that trigger those client Lua events.

