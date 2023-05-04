local status, cmp = pcall(require, "cmp")
if (not status) then return end

local lspkind = require 'lspkind'
local luasnip = require('luasnip')

-- TODO copilot
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-h>"] = cmp.mapping.complete(),
        ["<Tab>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
    }),
    sources = cmp.config.sources({
        { name = "copilot" },
        { name = 'nvim_lsp' },
        { name = 'buffer' }
    }),
    formatting = {
        format = lspkind.cmp_format({ with_text = true, maxwidth = 50 })
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
})
