vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use "ellisonleao/gruvbox.nvim"
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    }
    use 'mbbill/undotree'
    use 'RRethy/vim-illuminate'
    use 'windwp/nvim-autopairs'
    use 'echasnovski/mini.pairs'
    use 'lewis6991/gitsigns.nvim'
    use 'ThePrimeagen/harpoon'
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
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'
    use 'preservim/vimux'
    use 'alexghergh/nvim-tmux-navigation'
end)
