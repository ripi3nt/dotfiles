require("manager")

require("lazy").setup({
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"neoclide/coc.nvim", branch="release"},
	{"windwp/nvim-autopairs"},
	{"nvim-tree/nvim-web-devicons"},
	{"nvim-tree/nvim-tree.lua"},
	{"rebelot/kanagawa.nvim"}
})

require("plugins")

--Tab to autocomplete
vim.api.nvim_set_keymap("i", "<tab>", 'coc#pum#visible() ? coc#pum#confirm() : "<tab>"', {silent = true, noremap=true, expr=true})

--Toggle file viewer
vim.api.nvim_set_keymap("n", " fv", ":NvimTreeToggle\n", {})

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

