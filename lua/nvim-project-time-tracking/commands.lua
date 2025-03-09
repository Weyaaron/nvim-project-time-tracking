local start = require("nvim-project-time-tracking.commands.start")

local module = {
	-- Start = start_command,
	Start = start,

	Toggle = {
		execute = function(args)
			-- start_command.stop()
		end,
		complete = function()
			return {}
		end,
	},
	-- Analyse = analyze_command,
}

return module
