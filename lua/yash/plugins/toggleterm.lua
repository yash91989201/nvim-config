return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	config = function()
		local o = vim.o
		local keymap = vim.keymap
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			hide_numbers = true,
			close_on_exit = true,
			start_in_insert = true,
			shade_terminals = true,
			persist_size = false,
			shell = o.shell,
			auto_scroll = true,
			float_opts = {
				border = "single",
				width = 96,
				height = 24,
				winblend = 3,
				title_pos = "center",
			},
			winbar = {
				enabled = false,
				name_formatter = function(term) --  term: Terminal
					return term.name
				end,
			},
		})

		-- set keymaps
		keymap.set(
			"n",
			"<leader>xv",
			"<cmd>ToggleTerm direction=vertical size=64<CR>",
			{ desc = "Toggle vertical terminal" }
		)
		keymap.set(
			"n",
			"<leader>xh",
			"<cmd>ToggleTerm direction=horizontal size=24<CR>",
			{ desc = "Toggle horizontal terminal" }
		)
		keymap.set("n", "<leader>xf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle floating terminal" })
		keymap.set("n", "<leader>xn", "<cmd>ToggleTermSetName<CR>", { desc = "Set terminal name" })
		keymap.set("n", "<leader>xs", "<cmd>TermSelect<CR>", { desc = "Select between terminal" })
		keymap.set("n", "<leader>xx", "<cmd>ToggleTerm<CR>", { desc = "Toggle between terminal" })
		keymap.set("t", "<Esc>", "<C-\\><C-n><C-w>h", { silent = true, desc = "Normal mode in terminal" })
	end,
}
