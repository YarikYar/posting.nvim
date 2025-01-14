local ui = require("posting.ui")

local M = {}

-- @return nil
M.run = function()
	ui.toggle_posting_terminal()
end

return M
