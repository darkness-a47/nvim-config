vim.cmd.colorscheme "catppuccin"

local map = require("utils").map
vim.g.mapleader = ' '

--leader
map("n", "<leader>\\", ":nohlsearch<CR>", { silent = true })
map('n', '<leader>w', ":w<CR>", { silent = true })
map('n', '<leader>a', ":wa<CR>", { silent = true })
map('n', '<leader>h', "<C-W>h", { silent = true })
map('n', '<leader>j', "<C-W>j", { silent = true })
map('n', '<leader>k', "<C-W>k", { silent = true })
map('n', '<leader>l', "<C-W>l", { silent = true })
map('n', '<leader>q', ":NvimTreeFocus<CR>", { silent = true })
map("n", "<leader>Q", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<leader>b", "<C-^>", { silent = true })
map("n", "<leader>y", '"+y', { silent = true })
map("v", "<leader>y", '"+y', { silent = true })


--ctrl

--brackets
map("i", "'", "''<left>")
map("i", '"', '""<left>')
map("i", "(", "()<left>")
map("i", "{", "{}<left>")
map("i", "[", "[]<left>")
--map("i", "<", "<><left>")

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
