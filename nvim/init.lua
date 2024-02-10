require("manager")

require("lazy").setup({
  { "williamboman/mason-lspconfig.nvim" },
  { "williamboman/mason.nvim" },
  { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "saadparwaiz1/cmp_luasnip" },
  { "L3MON4D3/LuaSnip" },
  { "windwp/nvim-autopairs" },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua" },
  { "rebelot/kanagawa.nvim" },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { 'windwp/nvim-ts-autotag' },
  { 'norcalli/nvim-colorizer.lua' },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
})

require("plugins")

--MAPPINGS
--File manager
vim.api.nvim_set_keymap("n", " fv", ":NvimTreeFocus\n", {})

--Tabs
vim.api.nvim_set_keymap("n", "tn", ":BufferNext\n", {})
vim.api.nvim_set_keymap("n", "tp", ":BufferPrevious\n", {})
vim.api.nvim_set_keymap("n", "tq", ":BufferClose\n", { noremap = true, silent = true })

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.autochdir =true
