vim.g.mapleader = " "

local bind = vim.keymap.set

bind("n", "<leader>hw", function()
	print("Hello, VIM!")
end)

bind("n", "<leader>pv", vim.cmd.Ex)
