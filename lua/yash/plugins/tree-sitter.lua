return {
	"nvim-treesitter/nvim-treesitter",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		-- setup tree sitter
		treesitter.setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indend = {
				enable = true,
			},
			-- enable autotagging with the help of nvim-ts-autotag plugin
			autotag = {
				enable = true,
			},
			-- ensure these language parsers are installed
			ensure_installed = {
				"http",
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"go",
				"gomod",
				"gosum",
				"sql",
				"templ",
				"terraform",
				"hcl",
				"proto",
				"nginx",
				"helm",
			},
			sync_install = true,
			auto_install = true,
			ignore_install = {},
			modules = {},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
