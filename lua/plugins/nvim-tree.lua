return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = 'left',
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            git = true,
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      git = {
        ignore = false
      },
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local opts = { buffer = bufnr, noremap = true, silent = true }
        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.set("n", "t", api.node.open.tab, opts)
        vim.keymap.set("n", "<CR>", api.node.open.vertical, opts)
        vim.keymap.set("n", "<C-h>", api.node.open.horizontal, opts)

        vim.keymap.set("n", "<C-Left>", "<C-w>h", {})
        vim.keymap.set("n", "<C-Right>", "<C-w>l", {})
      end,
    })
  end,
}
