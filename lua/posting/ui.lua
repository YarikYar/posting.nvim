local Terminal = require("toggleterm.terminal").Terminal
local posting_config = require("posting.config")

local M = {}

local posting_term = nil -- Store the terminal object

--- Toggle the Posting terminal
-- @return nil
-- @usage require("posting.ui").toggle_posting_terminal()
function M.toggle_posting_terminal()
	if posting_term and posting_term:is_open() then
		posting_term:close()
		posting_term = nil
	else
		-- Create a floating terminal pane and run a custom command
		posting_term = Terminal:new({
			cmd = "posting",
			direction = "float",
			float_opts = { border = posting_config.options.border },
			on_open = function(term)
				vim.cmd("startinsert!")
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
			end,
		})
		return posting_term:toggle()
	end
end

return M
