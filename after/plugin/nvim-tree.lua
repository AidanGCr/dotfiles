-- examples for your init.lua (but I'm gonna put it all in an after file) 

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 0 
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup() 

vim.keymap.set("n", "<leader>tt", ':NvimTreeToggle<CR>')
vim.keymap.set("n", "<leader>tf", ':NvimTreeFindFile<CR>')
vim.keymap.set("n", "<leader>tc", ':NvimTreeCollapse<CR>')
vim.keymap.set("n", "<leader>t", ':NvimTreeFocus<CR>')
vim.keymap.set("n", "<leader>tr", ':NvimTreeRefresh<CR>')

