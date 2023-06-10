-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use "folke/tokyonight.nvim"
    use 'norcalli/nvim-colorizer.lua'

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use 'tpope/vim-commentary'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use { "akinsho/toggleterm.nvim", tag = '*' }

    use {
        'zbirenbaum/copilot.lua',
    }
    use {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end
    }

    use 'zivyangll/git-blame.vim'
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use 'folke/trouble.nvim'
    use('nvim-lualine/lualine.nvim')
    use {
        "echasnovski/mini.pairs",
    }
    use {
        "RRethy/vim-illuminate",
    }
    use "mg979/vim-visual-multi"
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })
    use 'ThePrimeagen/harpoon'

    use 'kyazdani42/nvim-web-devicons'


    -- lsp stuff
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use 'L3MON4D3/luasnip'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind.nvim'
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')
    -- use {
    --     'rmagatti/goto-preview',
    --     config = function()
    --         require('goto-preview').setup {}
    --     end
    -- }
    -- use({
    --     'ray-x/navigator.lua',
    --     requires = {
    --         { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
    --         { 'neovim/nvim-lspconfig' },
    --     },
    -- })
end)
