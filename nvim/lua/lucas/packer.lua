-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use "folke/tokyonight.nvim"
    use 'norcalli/nvim-colorizer.lua'


	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'ilyachur/cmake4vim'

    use 'tpope/vim-commentary'
    use {"akinsho/toggleterm.nvim", tag = '*' }

    use 'github/copilot.vim'
    use 'mhinz/vim-startify'

    use('nvim-treesitter/playground')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required

        {'neovim/nvim-lspconfig'},
        {'jose-elias-alvarez/null-ls.nvim'},
        {'MunifTanjim/prettier.nvim'},
    }}

    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    use "windwp/nvim-autopairs"
    use "mg979/vim-visual-multi"

    use('windwp/nvim-ts-autotag')
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })
    use 'ThePrimeagen/harpoon'


end)
