vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "gb", "viw")

-- move stuff while highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "gt", "<C-w><C-]>")
vim.keymap.set("n", "<C-o>", "<C-^>")
vim.keymap.set("v", "<leader>y", '"*y<CR>')

-- VIM fugitive
vim.keymap.set("n", "<leader>gg", vim.cmd.Git)

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Dispatch stuff
vim.keymap.set("n", "<leader>m", ':VimuxRunCommand "make build -j 10"<CR>')
vim.keymap.set("n", "<leader>r", ':VimuxRunCommand "make run -j 10"<CR>')
