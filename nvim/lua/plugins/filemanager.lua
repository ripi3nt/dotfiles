-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
  local api = require"nvim-tree.api"

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<Enter>', api.node.open.tab, { buffer = bufnr, noremap = true, silent = true, nowait = true})

end

-- OR setup with some options
require("nvim-tree").setup({
  on_attach = my_on_attach,
  sort = {
    sorter = "name",
  },
  view = {
    width = 30,
    side = "right",
  },
  renderer = {
    group_empty = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  },
  tab = {
    sync = {
      open = true,
      close = true
    }
  }

})

