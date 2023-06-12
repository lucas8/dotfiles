local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))
end, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>ps', function()
    builtin.live_grep();
end)
vim.keymap.set('n', 'gr', function()
    builtin.lsp_references();
end)
