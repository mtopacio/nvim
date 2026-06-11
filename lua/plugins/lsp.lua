return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { 'pyright', 'html' },
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.lsp.config('pyright', {
        settings = {
          python = {
            pythonPath = '.venv/Scripts/python.exe',
          },
        },
      })
      vim.lsp.enable('pyright')
      vim.lsp.config('html', {})
      vim.lsp.enable('html')
    end
  },
}
