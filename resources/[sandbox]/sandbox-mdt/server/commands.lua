function RegisterChatCommands()

	Chat:RegisterAdminCommand("firejob", function(source, args, rawCommand)
		local targetSID = tonumber(args[1])
		local jobId = args[2]

		if targetSID and jobId then
			local charData = MDT.People:View(targetSID)
			if charData then
				-- إزالة الوظيفة من بيانات اللاعب
				local removed = Jobs:RemoveJob(targetSID, jobId)

				if removed then
					-- تحديث سجل الـ MDT
					local update = {
						["$push"] = {
							MDTHistory = {
								Time = (os.time() * 1000),
								Char = source,
								Log = string.format("Fired From Job %s By Admin (SID %s)", jobId, source),
							},
						},
					}

					-- إزالة Callsign لو الوظيفة من الوظائف الحكومية
					if jobId == "police" or jobId == "ems" or jobId == "prison" then
						update["$set"] = {
							Callsign = false,
						}
					end

					Database.Game:updateOne({
						collection = "characters",
						query = {
							SID = targetSID,
						},
						update = update,
					}, function(success, results)
						if success and (jobId == "police" or jobId == "ems") then
							local firedChar = Fetch:SID(targetSID)
							if firedChar then
								firedChar:SetData("Callsign", false)
							end
						end
					end)

					Chat.Send.System:Single(source, string.format("Fired SID %s from job %s", targetSID, jobId))
				else
					Chat.Send.System:Single(source, "Failed to remove job.")
				end
			else
				Chat.Send.System:Single(source, "Character not found.")
			end
		else
			Chat.Send.System:Single(source, "Invalid arguments.")
		end
	end,
	{
		help = "Force fire someone from a job",
		params = {
			{
				name = "Target",
				help = "State ID of target",
			},
			{
				name = "Job ID",
				help = "Job ID to remove from the player",
			},
		},
	}, 2)

	Chat:RegisterAdminCommand("setcallsign", function(source, args, rawCommand)
		local newCallsign = args[2]
		local target = Fetch:SID(tonumber(args[1]))
		if target ~= nil then
			if
				Jobs.Permissions:HasJob(target:GetData("Source"), "police")
				or Jobs.Permissions:HasJob(target:GetData("Source"), "ems")
			then
				if MDT.People:Update(-1, target:GetData("SID"), "Callsign", newCallsign) then
					Chat.Send.System:Single(source, "Updated Callsign")
					EmergencyAlerts:RefreshCallsign(target:GetData("SID"),newCallsign)
				else
					Chat.Send.System:Single(source, "Error Updating Callsign")
				end
			else
				Chat.Send.System:Single(source, "Target is not Emergency Personnel")
			end
		else
			Chat.Send.System:Single(source, "Invalid State ID")
		end
	end, {
		help = "Assign a callsign to an emergency worker",
		params = {
			{
				name = "Target",
				help = "State ID",
			},
			{
				name = "Callsign",
				help = "The callsign you want to assign to the player. This must be unique",
			},
		},
	}, 2)

	Chat:RegisterAdminCommand("reclaimcallsign", function(source, args, rawCommand)
		Database.Game:findOneAndUpdate({
			collection = "characters",
			query = {
				Callsign = args[1],
			},
			update = {
				['$set'] = {
					Callsign = false,
				},
			},
			options = {
				projection = {
					SID = 1,
					User = 1,
					First = 1,
					Last = 1,
				},
			},
		}, function(success, results)
			if success and results then
				local char = Fetch:SID(results.SID)
				if char then
					char:SetData("Callsign", false)
				end

				Chat.Send.System:Single(source, string.format("Callsign Reclaimed From %s %s (%s)", results.First, results.Last, results.SID))
			else
				Chat.Send.System:Single(source, "Nobody With That Callsign")
			end
		end)
	end, {
		help = "Force Reclaim a Callsign",
		params = {
			{
				name = "Callsign",
				help = "The callsign you want to reclaim.",
			},
		},
	}, 1)

	Chat:RegisterCommand(
		"mdt",
		function(source, args, rawCommand)
			TriggerClientEvent("MDT:Client:Toggle", source)
		end,
		{
			help = "Open MDT",
		},
		0,
		{
			{
				Id = "police",
			},
			{
				Id = "government",
			},
			{
				Id = "ems",
			},
			{
				Id = "prison",
			},
		}
	)

	Chat:RegisterAdminCommand("addmdtsysadmin", function(source, args, rawCommand)
		local targetStateId = math.tointeger(args[1])
		local success = MDT.People:Update(-1, targetStateId, "MDTSystemAdmin", true)
		if success then
			Chat.Send.System:Single(source, "Granted System Admin to State ID: " .. targetStateId)
		else
			Chat.Send.System:Single(source, "Error Granting System Admin")
		end
	end, {
		help = "Grant MDT System Admin [Danger!]",
		params = {
			{
				name = "Target State ID",
				help = "State ID of Character",
			},
		},
	}, 1)

	Chat:RegisterAdminCommand("removemdtsysadmin", function(source, args, rawCommand)
		local targetStateId = math.tointeger(args[1])
		local success = MDT.People:Update(-1, targetStateId, "MDTSystemAdmin", false)
		if success then
			Chat.Send.System:Single(source, "Revoked System Admin from State ID: " .. targetStateId)
		else
			Chat.Send.System:Single(source, "Error Revoking System Admin")
		end
	end, {
		help = "Revoke MDT System Admin",
		params = {
			{
				name = "Target State ID",
				help = "State ID of Character",
			},
		},
	}, 1)

	Chat:RegisterCommand(
		"clearblips",
		function(source, args, rawCommand)
			TriggerClientEvent("EmergencyAlerts:Client:Clear", source)
		end,
		{
			help = "Clear Emergency Alert Blips",
		},
		0,
		{
			{
				Id = "police",
			},
			{
				Id = "ems",
			},
			{
				Id = "tow",
			}
		}
	)
end
