vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tabs to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if mixed case is included in your search , assumes you want case sensitive

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- show single column so that text doesnot shift

--backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard use system clipboard
opt.clipboard:append("unnamedplus")

opt.splitright = true -- split vertical window to right
opt.splitbelow = true -- split horizontal window to bottom

-- vim.api.nvim_create_autocmd("BufReadPre", {
-- 	group = vim.api.nvim_create_augroup("showtabline", { clear = true }),
-- 	callback = function()
-- 		vim.opt.showtabline = 0
-- 	end,
-- 	desc = "Set tabline to 0",
-- })
