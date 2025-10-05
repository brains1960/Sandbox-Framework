_MDT = {}

function table.copy(t)
	local u = {}
	for k, v in pairs(t) do
		u[k] = v
	end
	return setmetatable(u, getmetatable(t))
end

local _DebugEnabled = false

function kprint(...)
    if _DebugEnabled then
        local args = {...}
        local messageToPrint = table.concat(args, "   ")
        print(messageToPrint)
    end
end
