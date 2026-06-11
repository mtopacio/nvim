-- Use Alt+Shift+Up/Down instead
vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- PLUGINS

vim.keymap.set(
    'n',
    '<leader>ti',
    function()
        local indent = require('blink.indent')
        indent.enable(not indent.is_enabled())
    end,
    { desc = 'Toggle indent guides' }
)

vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { desc = 'Toggle file explorer'})
