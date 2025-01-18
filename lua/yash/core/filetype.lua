local filetype = vim.filetype

filetype.add({
	extension = {
		["http"] = "http",
		["tf"] = "terraform",
	},
	pattern = {
		[".*%.env.*"] = "dotenv", -- Matches files like `.env`, `.env.local`, `.env.example`, etc.
	},
})
