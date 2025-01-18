vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>ch", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Close all tabs to the right of the current tab
keymap.set("n", "<leader>tl", function()
	local current = vim.fn.tabpagenr()
	local total = vim.fn.tabpagenr("$")
	for i = total, current + 1, -1 do
		vim.cmd("tabclose " .. i)
	end
end, { desc = "Close all tabs to the right" })

-- Close all tabs to the left of the current tab
keymap.set("n", "<leader>th", function()
	local current = vim.fn.tabpagenr()
	for i = current - 1, 1, -1 do
		vim.cmd("tabclose " .. i)
	end
end, { desc = "Close all tabs to the left" })

-- Close all tabs other than the current tab
keymap.set("n", "<leader>tt", function()
	local current = vim.fn.tabpagenr()
	local total = vim.fn.tabpagenr("$")
	for i = total, 1, -1 do
		if i ~= current then
			vim.cmd("tabclose " .. i)
		end
	end
end, { desc = "Close all other tabs" })
