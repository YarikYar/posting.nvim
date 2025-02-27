local M = {}

--- Setup the plugin
-- @param options: table - user options
-- @return nil
M.setup = function(options)
	local config = require("posting.config")
	config.setup(options)
end

--- open the lazydocker UI
-- @return nil
M.open = function()
	local open_action = require("posting.actions.open")
	open_action.run()
end

return M
