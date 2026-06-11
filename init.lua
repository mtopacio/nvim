-- windows: $env:LOCALAPPDATA\nvim\init.lua
-- Add this to ~/.config/nvim/init.lua
-- (or ~\AppData\Local\nvim\init.lua on Windows)


vim.g.mapleader = " "
vim.opt.expandtab = true
vim.opt.shiftwidth = 4          -- indent = 4 spaces
vim.opt.tabstop = 4             -- tab character = 4 spaces
vim.opt.scrolloff = 8           -- keeps 8 lines above/below cursor
vim.opt.sidescrolloff = 8       -- keeps 8 columns left/right of cursor
vim.opt.number = true           -- show line numbers
vim.opt.relativenumber = false  -- show relative numbers (useful for jumping)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- error codes on end of line
vim.diagnostic.config({
    virtual_text=true,
    signs=true,
    underline=true
})

require("lazy").setup("plugins")
require("keymaps")
require('neodoc').setup({
    python_interpreter = 'python3',
    docstring_style = 'numpy',
    -- Enable keymaps (default: true)
    enable_keymaps = true,
    keymap = '<leader>d',
    use_custom_template = false
})
vim.lsp.enable("ruff")

--vim.cmd([[colorscheme thorn]])
vim.cmd([[colorscheme sylvan]])
