vim.g.mapleader = " "
-- Opens :Ex the beautiful netwr
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen)

-- Moves the selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Moves the line below to the end of the current line and keeps the cursor at BOL
vim.keymap.set("n", "J", "mzJ`z")

-- Navigation keeping the cursor in middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Found next keeping the cursor in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- when deleting copy to the system clipboard
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Ctrl+c behaves like Esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Q do nothing
vim.keymap.set("n", "Q", "<nop>")

-- Replace all ocurrences of the work under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
