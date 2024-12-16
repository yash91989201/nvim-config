return {
	"mistweaverco/kulala.nvim",
	ft = "http",
	keys = {
		{ "<leader>h", "", desc = "HTTP client" },
		{ "<leader>hs", "<cmd>lua require('kulala').run()<cr>", desc = "Send the request" },
		{ "<leader>ht", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle headers/body" },
		{ "<leader>hp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Jump to previous request" },
		{ "<leader>hn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Jump to next request" },
	},
	opts = {},
}
