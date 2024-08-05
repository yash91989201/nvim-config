return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
	end,
	opts = {
		-- your configs come here
		-- or leave it empty to use the default settings
	},
}
