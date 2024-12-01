vim.g.mapleader = " "
-- Opens :Ex the beautiful netwr
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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

-- Map tabs
-- Key mappings for better tab management
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true })    -- Open a new tab
vim.api.nvim_set_keymap('n', '<leader>to', ':tabonly<CR>', { noremap = true, silent = true })   -- Close all other tabs
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })  -- Close current tab
vim.api.nvim_set_keymap('n', '<leader>tm', ':tabmove ', { noremap = true, silent = false })     -- Move current tab (prompts for tab position)
vim.api.nvim_set_keymap('n', '<leader>tl', ':tabnext<CR>', { noremap = true, silent = true })   -- Go to next tab
vim.api.nvim_set_keymap('n', '<leader>th', ':tabprevious<CR>', { noremap = true, silent = true })-- Go to previous tab
vim.api.nvim_set_keymap('n', '<leader>t1', '1gt', { noremap = true, silent = true })            -- Go to tab 1
vim.api.nvim_set_keymap('n', '<leader>t2', '2gt', { noremap = true, silent = true })            -- Go to tab 2
vim.api.nvim_set_keymap('n', '<leader>t3', '3gt', { noremap = true, silent = true })            -- Go to tab 3
vim.api.nvim_set_keymap('n', '<leader>t4', '4gt', { noremap = true, silent = true })            -- Go to tab 4

-- Copy the current file name
vim.keymap.set("n", "<leader>cp", function()
  vim.fn.setreg('+', vim.fn.expand('%'))
end, { noremap = true, silent = true })

-- Resize splits with arrow keys
vim.api.nvim_set_keymap("n", "<C-S-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Left>", ":vertical resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Right>", ":vertical resize -2<CR>", { noremap = true, silent = true })

