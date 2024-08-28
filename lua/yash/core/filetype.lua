local filetype = vim.filetype

filetype.add({
	extension = {
		["http"] = "http",
		["tf"] = "terraform",
	},
})
