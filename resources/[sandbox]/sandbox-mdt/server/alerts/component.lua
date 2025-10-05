_alertsPermMap = {
	[1] = "police_alerts",
	[2] = "ems_alerts",
	[3] = "tow_alerts",
	[4] = "doc_alerts",
}

_alertValidTypes = {
	police = {
		"car",
		"motorcycle",
		"air1",
	},
	ems = {
		"bus",
		"car",
		"lifeflight",
	},
	tow = {
		"truck-tow",
	},
	prison = {
		"car",
	},
}

_alertTypeNames = {
	car = "Ground",
	motorcycle = "Motorcycle",
	air1 = "Air",
	bus = "Ambo",
	lifeflight = "Life Flight",
}

_alertsDefaultType = {
	police = _alertValidTypes.police[1],
	ems = _alertValidTypes.ems[1],
	tow = _alertValidTypes.tow[1],
	prison = _alertValidTypes.prison[1],
}

function GenerateRandomId()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
        return string.format('%x', v)
    end)
end

AddEventHandler("EmergencyAlerts:Shared:DependencyUpdate", RetrieveEAComponents)
function RetrieveEAComponents()
	Fetch = exports["sandbox-base"]:FetchComponent("Fetch")
	Database = exports["sandbox-base"]:FetchComponent("Database")
	Callbacks = exports["sandbox-base"]:FetchComponent("Callbacks")
	Logger = exports["sandbox-base"]:FetchComponent("Logger")
	Utils = exports["sandbox-base"]:FetchComponent("Utils")
	Chat = exports["sandbox-base"]:FetchComponent("Chat")
	Middleware = exports["sandbox-base"]:FetchComponent("Middleware")
	EmergencyAlerts = exports["sandbox-base"]:FetchComponent("EmergencyAlerts")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["sandbox-base"]:RequestDependencies("MDT", {
		"Fetch",
		"Database",
		"Callbacks",
		"Logger",
		"Utils",
		"Chat",
		"Middleware",
		"EmergencyAlerts",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveEAComponents()
		RegisterEACallbacks()
		StartAETrackingThreads()
	end)
end)

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["sandbox-base"]:RegisterComponent("EmergencyAlerts", _pdAlerts)
end)

emergencyAlertsData = {} -- Stores data for on-duty members: emergencyAlertsData[source] = data
_activeAlerts = {}     -- Stores active alerts: _activeAlerts[alertId] = alertData
_dispatchLog = {}      -- Stores dispatch log entries (optional, if needed server-side beyond sending to client)
_radioInfo = {
    {
        id = "radio_police_1",
        text = "Police#1",
        radio = 1
    },
    {
        id = "radio_police_2",
        text = "Police#2",
        radio = 2
    },
    {
        id = "radio_ems_1",
        text = "EMS#1",
        radio = 3
    },
    {
        id = "radio_ems_2",
        text = "EMS#2",
        radio = 4
    },
}

_pdAlerts = {
	Create = function(self, code, title, type, location, description, isPanic, blip, styleOverride, isArea, camera)
		kprint("done")
		TriggerEvent("EmergencyAlerts:Server:HandleCreateAlert", code, title, type, location, description, isPanic, blip, styleOverride, isArea, camera)
	end,
	OnDuty = function(self, dutyData, source, stateId, callsign)
		kprint("^2[DEBUG] OnDuty Triggered for Source:^0", source)
		kprint("^3[dutyData]:^0", json.encode(dutyData))
		kprint("^3[stateId]:^0", stateId)
		kprint("^3[callsign]:^0", callsign)

		if dutyData and (dutyData.Id == "police" or dutyData.Id == "ems" or dutyData.Id == "tow" or dutyData.Id == "prison") then
			local alertPermissions = {}
			local allJobPermissions = Jobs.Permissions:GetPermissionsFromJob(source, dutyData.Id)

			kprint("^4[Job Permissions]:^0", json.encode(allJobPermissions))

			for k, v in pairs(_alertsPermMap) do
				if allJobPermissions and allJobPermissions[v] then
					alertPermissions[v] = true
				end
			end

			local char = Fetch:CharacterSource(source)

			local first = char:GetData("First")
			local last = char:GetData("Last")
			local phone = char:GetData("Phone")

			emergencyAlertsData[source] = {
				SID = stateId,
				Source = source,
				Job = dutyData.Id,
				Workplace = dutyData.WorkplaceId,
				Callsign = callsign,
				Phone = phone,
				AlertPermissions = alertPermissions,
				First = first,
				Last = last,
				Coords = GetEntityCoords(GetPlayerPed(source)),
				Type = _alertsDefaultType[dutyData.Id],
				available = true,
				status = 1,
				statusName = "Available",
				panic = false,
				pursuit = false,
				operatingUnder = nil,
				radioChannel = "N/A"
			}

			kprint("^6[Stored emergencyAlertsData]:^0", json.encode(emergencyAlertsData[source]))

			local myUnitDataForNUI = {
				job = dutyData.Id,
				primary = callsign,
				callsign = callsign,
				name = string.format("%s %s", first or "N/A", last or "N/A"),
				source = source,
				type = _alertsDefaultType[dutyData.Id],
				available = true,
				status = 1,
				statusName = "Available",
				panic = false,
				pursuit = false,
				operatingUnder = nil
			}

			local currentAlertsForClient = {}
			if emergencyAlertsData[source] and emergencyAlertsData[source].AlertPermissions then
				currentAlertsForClient = GetAllActiveAlertsForJobPermissions(emergencyAlertsData[source].AlertPermissions)
			end

			kprint("^5[Current Alerts for Client]:^0", json.encode(currentAlertsForClient))

			-- Send NUI Initialization
			TriggerClientEvent("EmergencyAlerts:Client:InitializeNUI", source, myUnitDataForNUI, currentAlertsForClient, _radioInfo, _dispatchLog, emergencyAlertsData)

			kprint("^2[TriggerClientEvent -> EmergencyAlerts:Client:InitializeNUI]^0")

			if Player(source).state.trackerDisabled then
				Player(source).state.trackerDisabled = false
			end

			EmergencyAlerts:SendMemberUpdates(true)

			if dutyData.Id == "police" or dutyData.Id == "prison" then
				local callsignLog = char:GetData("Callsign") or "UNKNOWN"
				local firstInitial = (first and first:sub(1, 1)) or "?"
				local lastName = last or "UNKNOWN"
				local dispatchMsg = string.format("[%s] %s. %s is 10-41 (On Duty)", callsignLog, firstInitial, lastName)

				kprint("^3[Dispatch Log]:^0", dispatchMsg)

				TriggerEvent("EmergencyAlerts:Server:HandleAddDispatchLog", "dutyChange", nil, dispatchMsg, callsignLog, dutyData.Id)
			end
		else
			kprint("^1[ERROR] Invalid or unsupported job for dutyData.Id:^0", dutyData and dutyData.Id)
		end
	end,
	GetUnitData = function(self, source, job) -- This seems to be called by external systems, keep as is.
		local char = Fetch:CharacterSource(source)
		if char then
			local alertPermissions = {}
			local allJobPermissions = Jobs.Permissions:GetPermissionsFromJob(source, job)
			if allJobPermissions then
				for k, v in pairs(_alertsPermMap) do
					if allJobPermissions[v] then
						table.insert(alertPermissions, v)
					end
				end
			end

			return {
				character = {
					SID = char:GetData("SID"),
					First = char:GetData("First"),
					Last = char:GetData("Last"),
					Phone = char:GetData("Phone"),
				},
				alerts = alertPermissions
			}
		end
	end,
	OffDuty = function(self, dutyData, source, stateId)
		local emergencyMember = emergencyAlertsData[source]
		if emergencyMember then
			TriggerClientEvent("EmergencyAlerts:Client:WentOffDuty", source) -- For NUI to reset

			local c = Fetch:CharacterSource(source)
			if c and dutyData and (dutyData.Id == "police" or dutyData.Id == "prison") then
				TriggerEvent("EmergencyAlerts:Server:HandleAddDispatchLog", "dutyChange", nil, string.format(
					"[%s] %s. %s is 10-42 (Off Duty)",
					c:GetData("Callsign"),
					c:GetData("First"):sub(1, 1),
					c:GetData("Last")
				), c:GetData("Callsign"), dutyData.Id) -- Added sourceName and job
			end

			emergencyAlertsData[source] = nil
			EmergencyAlerts:SendMemberUpdates()
		end
	end,
	DisableTracker = function(self, source, state) -- Keep as is, seems to interact with SendOnDutyEvent
		local emergencyMember = emergencyAlertsData[source]
		if emergencyMember and (emergencyMember.Job == "police" or emergencyMember.Job == "prison" or emergencyMember.Job == "ems") and emergencyMember.TrackerDisabled ~= state then
			emergencyAlertsData[source].TrackerDisabled = state
			EmergencyAlerts:SendOnDutyEvent("EmergencyAlerts:Client:UpdateMember", emergencyAlertsData[source])
		end
	end,
	RefreshCallsign = function(self, stateId, newCallsign) -- Keep as is
		for k, v in pairs(emergencyAlertsData) do
			if v.SID == stateId then
				emergencyAlertsData[k].Callsign = newCallsign
                -- Also update primary if it's based on callsign for NUI state
                if emergencyAlertsData[k].primary == v.Callsign then emergencyAlertsData[k].primary = newCallsign end
			end
		end
        EmergencyAlerts:SendMemberUpdates() -- Propagate change
	end,
	SendMemberUpdates = function(self, isondutything)
		EmergencyAlerts:SendOnDutyEvent("EmergencyAlerts:Client:UpdateMembers", emergencyAlertsData, isondutything)
	end,
	SendOnDutyEvent = function(self, event, data, isondutything)
		for k, v in pairs(emergencyAlertsData) do
            if GetPlayerEndpoint(k) then -- Check player exists
    			TriggerClientEvent(event, k, data, isondutything)
            end
		end
	end,
}


-- Server-side Event Handlers --
RegisterNetEvent("EmergencyAlerts:Server:HandleCreateAlert", function(code, title, alertType, location, description, isPanic, blip, styleOverride, isArea, camera)
    kprint("^2[EmergencyAlerts] Creating alert...^0")

    local alertTypeType = type(alertType)

    local targetJobTypes = {}

    if alertTypeType == "number" then
        local alertText = _alertsPermMap[alertType]
        if alertText then
            table.insert(targetJobTypes, alertText)
        else
            kprint("^1[Warning] Invalid alertType number, no mapping found:^0", alertType)
            return
        end
    elseif alertTypeType == "string" then
        table.insert(targetJobTypes, alertType)
    elseif alertTypeType == "table" then
        targetJobTypes = alertType
    else
        kprint("^1[Warning] Invalid alertType (not string, table or number):^0", alertTypeType)
        return
    end

    kprint("^5[Debug] code:^0", code)
    kprint("^5[Debug] title:^0", title)
    kprint("^5[Debug] alertType:^0", json.encode(targetJobTypes))
    kprint("^5[Debug] location:^0", json.encode(location))
    kprint("^5[Debug] description:^0", description)
    kprint("^5[Debug] isPanic:^0", tostring(isPanic))
    kprint("^5[Debug] blip:^0", tostring(blip))
    kprint("^5[Debug] styleOverride:^0", json.encode(styleOverride))
    kprint("^5[Debug] isArea:^0", tostring(isArea))
    kprint("^5[Debug] camera:^0", json.encode(camera))

    -- Generate Alert ID
    local alertId = string.format("alert-%s", GenerateRandomId())
    kprint("^2[EmergencyAlerts] Alert ID generated:^0", alertId)

    -- Store Alert Data
    local alertData = {
        id = alertId, code = code, title = title, type = targetJobTypes, location = location,
        description = description, isPanic = isPanic, blip = blip, styleOverride = styleOverride,
        isArea = isArea, camera = camera, time = os.time() * 1000, attached = {},
    }
    _activeAlerts[alertId] = alertData

    -- Distribute the alert to authorized players
    for src, memberData in pairs(emergencyAlertsData) do
        if GetPlayerEndpoint(src) then
            local shouldReceive = false
            for _, jobTypeString in ipairs(targetJobTypes) do
                if memberData.AlertPermissions and memberData.AlertPermissions[jobTypeString] then
                    shouldReceive = true
                    break
                end
            end
            if shouldReceive then
                kprint(string.format("^6[Alert Sent] to player %s^0", src))
                TriggerClientEvent("EmergencyAlerts:Client:AddAlert", src, alertData)
            else
                kprint(string.format("^8[Skipped] Player %s does not have permission for alert type^0", src))
            end
        else
            kprint(string.format("^8[Invalid Player] No endpoint for player %s^0", src))
        end
    end

    kprint("^2[EmergencyAlerts] Alert processing complete.^0")
end)


RegisterNetEvent("EmergencyAlerts:Server:HandleRemoveAlert", function(alertId)
    local source = source -- Player who initiated this
    if _activeAlerts[alertId] then
        _activeAlerts[alertId] = nil
        for src, memberData in pairs(emergencyAlertsData) do
            if GetPlayerEndpoint(src) then TriggerClientEvent("EmergencyAlerts:Client:RemoveAlert", src, alertId) end
        end
    end
end)

RegisterNetEvent("EmergencyAlerts:Server:HandleAddDispatchLog", function(logType, alertId, message, sourceName, job)
    kprint("[DEBUG] HandleAddDispatchLog triggered")
    kprint("[DEBUG] Parameters:")
    kprint(" - logType:", logType)
    kprint(" - alertId:", alertId)
    kprint(" - message:", message)
    kprint(" - sourceName:", sourceName)
    kprint(" - job:", job)

    local logData = {
        type = logType,
        alertId = alertId,
        message = message,
        source = sourceName,
        job = job,
        time = os.time()
    }

    kprint("[DEBUG] Constructed logData:", json.encode(logData))

    table.insert(_dispatchLog, logData)
    kprint("[DEBUG] Dispatch log size after insert:", #_dispatchLog)

    if #_dispatchLog > 200 then
        table.remove(_dispatchLog, 1)
        kprint("[DEBUG] Dispatch log exceeded 200, oldest entry removed")
    end

    for src, memberData in pairs(emergencyAlertsData) do
        local endpoint = GetPlayerEndpoint(src)
        if endpoint then
            kprint(string.format("[DEBUG] Checking src %s with job %s", src, memberData.Job or "nil"))
            if memberData.Job == "police" or memberData.Job == "prison" then
                kprint("[DEBUG] Sending dispatch log to src:", src)
                TriggerClientEvent("EmergencyAlerts:Client:AddDispatchLog", src, logData)
            end
        else
            kprint("[DEBUG] Player src", src, "does not have a valid endpoint (probably disconnected)")
        end
    end
end)


RegisterNetEvent("EmergencyAlerts:Server:LogCustomMessage", function(messageText)
    local source = source
    kprint("[DEBUG] Event triggered by source:", source)

    local char = Fetch:CharacterSource(source)
    if char then
        kprint("[DEBUG] Character fetched successfully")
        kprint("[DEBUG] Callsign:", char:GetData("Callsign"))
        kprint("[DEBUG] First Name:", char:GetData("First"))
        kprint("[DEBUG] Last Name:", char:GetData("Last"))
    else
        kprint("[DEBUG] Failed to fetch character for source:", source)
    end

    local sourceName = "SYSTEM"
    if char then
        sourceName = string.format("[%s] %s. %s", 
            char:GetData("Callsign") or "UNK", 
            (char:GetData("First") or ""):sub(1,1), 
            char:GetData("Last") or "")
    end

    kprint("[DEBUG] Formatted sourceName:", sourceName)

    local job = "UNKNOWN"
    if emergencyAlertsData[source] then
        job = emergencyAlertsData[source].Job or "UNKNOWN"
        kprint("[DEBUG] Job from emergencyAlertsData:", job)
    else
        kprint("[DEBUG] No emergencyAlertsData found for source:", source)
    end

    kprint("[DEBUG] Triggering HandleAddDispatchLog with message:", messageText)
    TriggerEvent("EmergencyAlerts:Server:HandleAddDispatchLog", "message", nil, messageText, sourceName, job)
end)

RegisterNetEvent("EmergencyAlerts:Server:ChangeUnit", function(job, primary, unitType)
    local source = source
    kprint(string.format("[EmergencyAlerts] ChangeUnit called by source=%s with job=%s, primary=%s, unitType=%s", tostring(source), tostring(job), tostring(primary), tostring(unitType)))

    if emergencyAlertsData[source] then
        kprint("[EmergencyAlerts] Found emergencyAlertsData for source")

        if emergencyAlertsData[source].Job == job and emergencyAlertsData[source].Callsign == primary then
            kprint("[EmergencyAlerts] Job and Callsign match, changing unit type")

            emergencyAlertsData[source].Type = unitType
            kprint(string.format("[EmergencyAlerts] Unit type updated to: %s", tostring(unitType)))

            local payload = { job = job, primary = primary, key = "type", value = unitType }

            for clSrc, _ in pairs(emergencyAlertsData) do
                if GetPlayerEndpoint(clSrc) then
                    kprint(string.format("[EmergencyAlerts] Triggering client update for player %s", tostring(clSrc)))
                    TriggerClientEvent("EmergencyAlerts:Client:UnitUpdateData", clSrc, payload)
                else
                    kprint(string.format("[EmergencyAlerts] Player %s has no endpoint, skipping", tostring(clSrc)))
                end
            end
        else
            kprint("[EmergencyAlerts] Job or Callsign does not match for source")
        end
    else
        kprint("[EmergencyAlerts] No emergencyAlertsData found for source")
    end
end)

RegisterNetEvent("EmergencyAlerts:Server:ChangeAvailability", function(job, primary)
    local source = source
    kprint(string.format("[EmergencyAlerts] ChangeAvailability called by source=%s with job=%s, primary=%s", tostring(source), tostring(job), tostring(primary)))

    if emergencyAlertsData[source] then
        kprint("[EmergencyAlerts] Found emergencyAlertsData for source")

        if emergencyAlertsData[source].Job == job and emergencyAlertsData[source].Callsign == primary then
            kprint("[EmergencyAlerts] Job and Callsign match, toggling availability")

            local unit = emergencyAlertsData[source]
            unit.available = not unit.available
            unit.status = unit.available and 1 or 2
            unit.statusName = unit.available and "Available" or "Unavailable"

            kprint(string.format("[EmergencyAlerts] New availability: %s, status: %d, statusName: %s", tostring(unit.available), unit.status, unit.statusName))

            local p1 = { job = job, primary = primary, key = "available", value = unit.available }
            local p2 = { job = job, primary = primary, key = "status", value = unit.status }
            local p3 = { job = job, primary = primary, key = "statusName", value = unit.statusName }

            for clSrc, _ in pairs(emergencyAlertsData) do
                if GetPlayerEndpoint(clSrc) then
                    kprint(string.format("[EmergencyAlerts] Triggering client update for player %s", tostring(clSrc)))
                    TriggerClientEvent("EmergencyAlerts:Client:UnitUpdateData", clSrc, p1)
                    TriggerClientEvent("EmergencyAlerts:Client:UnitUpdateData", clSrc, p2)
                    TriggerClientEvent("EmergencyAlerts:Client:UnitUpdateData", clSrc, p3)
                else
                    kprint(string.format("[EmergencyAlerts] Player %s has no endpoint, skipping", tostring(clSrc)))
                end
            end
        else
            kprint("[EmergencyAlerts] Job or Callsign does not match for source")
        end
    else
        kprint("[EmergencyAlerts] No emergencyAlertsData found for source")
    end
end)


RegisterNetEvent("EmergencyAlerts:Server:OperateUnderUnit", function(job, attachingUnitCallsign, targetUnitCallsign)
    local source = source
    local unitToUpdate = nil
    for _, unit in pairs(emergencyAlertsData) do if unit.Job == job and unit.Callsign == attachingUnitCallsign then unitToUpdate = unit; break; end end
    if unitToUpdate then
        unitToUpdate.operatingUnder = targetUnitCallsign
        for clSrc, _ in pairs(emergencyAlertsData) do if GetPlayerEndpoint(clSrc) then TriggerClientEvent("EmergencyAlerts:Client:UnitOperateUnder", clSrc, job, attachingUnitCallsign, targetUnitCallsign) end end
    end
end)

RegisterNetEvent("EmergencyAlerts:Server:BreakOffUnit", function(job, breakingUnitCallsign)
    local source = source
    local unitToUpdate = nil
    for _, unit in pairs(emergencyAlertsData) do if unit.Job == job and unit.Callsign == breakingUnitCallsign then unitToUpdate = unit; break; end end
    if unitToUpdate then
        unitToUpdate.operatingUnder = nil
        for clSrc, _ in pairs(emergencyAlertsData) do if GetPlayerEndpoint(clSrc) then TriggerClientEvent("EmergencyAlerts:Client:UnitBreakOff", clSrc, job, breakingUnitCallsign) end end
    end
end)

RegisterNetEvent("EmergencyAlerts:Server:ToggleUnitAttachment", function(alertId, shouldAttach)
    local source = source
    local char = Fetch:Source(source):GetData('Character')
    if not char then return end

    -- Get the unit's callsign
    local callsign = char:GetData("Callsign")
    if not callsign then return end

    -- Validate alert exists
    if not _activeAlerts[alertId] then
        return
    end

    -- Add/remove unit
    if shouldAttach then
        if not Contains(_activeAlerts[alertId].attached, callsign) then
            table.insert(_activeAlerts[alertId].attached, callsign)
        end
    else
        _activeAlerts[alertId].attached = RemoveFromTable(_activeAlerts[alertId].attached, callsign)
    end

    -- Broadcast updated list to all clients
    for clSrc, _ in pairs(emergencyAlertsData) do
        if GetPlayerEndpoint(clSrc) then
            TriggerClientEvent("EmergencyAlerts:Client:AlertUpdateUnits", clSrc, alertId, _activeAlerts[alertId].attached)
        end
    end
end)

-- Helper functions
function Contains(table, item)
    for _, value in pairs(table) do
        if value == item then return true end
    end
    return false
end

function RemoveFromTable(table, item)
    local newTable = {}
    for _, value in pairs(table) do
        if value ~= item then
            table.insert(newTable, value)
        end
    end
    return newTable
end

RegisterNetEvent("EmergencyAlerts:Server:AddRadioInfo", function(radioData)
    radioData.id = radioData.id or GenerateRandomId()
    table.insert(_radioInfo, radioData)
    
    kprint("[RadioInfo] Added:")
    kprint(json.encode(radioData, { indent = true }))
    kprint("[RadioInfo] Current _radioInfo count: " .. tostring(#_radioInfo))

    for clSrc, _ in pairs(emergencyAlertsData) do
        if GetPlayerEndpoint(clSrc) then
            TriggerClientEvent("EmergencyAlerts:Client:RadioInfoUpdate", clSrc, _radioInfo)
        end
    end
end)

RegisterNetEvent("EmergencyAlerts:Server:UpdateRadioInfo", function(radioId, updatedRadioData)
    local updated = false
    for i, info in ipairs(_radioInfo) do
        if info.id == radioId then
            _radioInfo[i] = updatedRadioData
            updated = true
            break
        end
    end

    kprint("[RadioInfo] Attempt to update ID: " .. tostring(radioId))
    if updated then
        kprint("[RadioInfo] Updated:")
        kprint(json.encode(updatedRadioData, { indent = true }))
    else
        kprint("[RadioInfo] No matching radio ID found to update.")
    end

    for clSrc, _ in pairs(emergencyAlertsData) do
        if GetPlayerEndpoint(clSrc) then
            TriggerClientEvent("EmergencyAlerts:Client:RadioInfoUpdate", clSrc, _radioInfo)
        end
    end
end)

RegisterNetEvent("EmergencyAlerts:Server:RemoveRadioInfo", function(radioId)
    local removed = false
    for i, info in ipairs(_radioInfo) do
        if info.id == radioId then
            table.remove(_radioInfo, i)
            removed = true
            break
        end
    end

    kprint("[RadioInfo] Attempt to remove ID: " .. tostring(radioId))
    if removed then
        kprint("[RadioInfo] Radio entry removed.")
    else
        kprint("[RadioInfo] No matching radio ID found to remove.")
    end

    kprint("[RadioInfo] Current _radioInfo count: " .. tostring(#_radioInfo))

    for clSrc, _ in pairs(emergencyAlertsData) do
        if GetPlayerEndpoint(clSrc) then
            TriggerClientEvent("EmergencyAlerts:Client:RadioInfoUpdate", clSrc, _radioInfo)
        end
    end
end)

RegisterNetEvent("EmergencyAlerts:Server:ChangePursuitMode", function(job, unitCallsign, mode)
    local source = source
    local unitToUpdate = nil
    for _, unit in pairs(emergencyAlertsData) do if unit.Job == job and unit.Callsign == unitCallsign then unitToUpdate = unit; break; end end
    if unitToUpdate then
        unitToUpdate.pursuit = mode
        local payload = { job = job, primary = unitCallsign, key = "pursuit", value = mode }
        for clSrc, _ in pairs(emergencyAlertsData) do if GetPlayerEndpoint(clSrc) then TriggerClientEvent("EmergencyAlerts:Client:UnitUpdateData", clSrc, payload) end end
    end
end)

RegisterNetEvent("EmergencyAlerts:Server:ChangeRadioChannel", function(channel)
    local source = source
	if tonumber(channel) >= 0.1 and tonumber(channel) <= 30 then
		rchannel = channel
	else
		rchannel = "N/A"
	end
    if emergencyAlertsData[source] then
        emergencyAlertsData[source].radioChannel = rchannel
        local payload = { job = emergencyAlertsData[source].Job, primary = emergencyAlertsData[source].Callsign, key = "radioChannel", value = rchannel }
        for clSrc, _ in pairs(emergencyAlertsData) do if GetPlayerEndpoint(clSrc) then TriggerClientEvent("EmergencyAlerts:Client:UnitUpdateData", clSrc, payload) end end
    end
end)

-- Helper function used in OnDuty
function GetAllActiveAlertsForJobPermissions(jobPermissions)
    local alerts = {}
    for id, alert in pairs(_activeAlerts) do
        local shouldReceive = false
        local targetJobTypes = {}
        if type(alert.type) == "string" then table.insert(targetJobTypes, alert.type)
        elseif type(alert.type) == "table" then targetJobTypes = alert.type end

        for _, jobTypeString in ipairs(targetJobTypes) do
            if jobPermissions and jobPermissions[jobTypeString] then shouldReceive = true; break; end
        end
        if shouldReceive then table.insert(alerts, alert) end
    end
    return alerts
end

-- Ensure StartAETrackingThreads is defined if called (it's in tracking.lua, typically client-side)
-- If StartAETrackingThreads is server-side, its definition should be here or loaded.
-- For now, assuming it's handled elsewhere or client-side as per original structure.

