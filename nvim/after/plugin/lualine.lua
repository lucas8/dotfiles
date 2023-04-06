local lualine = require('lualine')

lualine.setup({
    options = {
        icons_enabled = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'diff', 'diagnostics', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
})
