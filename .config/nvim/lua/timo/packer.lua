return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use 'rebelot/kanagawa.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    }

    use 'nvim-treesitter/playground'

    use 'ThePrimeagen/harpoon'

    use 'ggandor/leap.nvim'

    use 'mbbill/undotree'

    use {
        'TimUntersberger/neogit',
        requires = {
            'sindrets/diffview.nvim',
            'nvim-tree/nvim-web-devicons'
        }
    }

    use 'lewis6991/gitsigns.nvim'

    use 'lukas-reineke/indent-blankline.nvim'

    use 'windwp/nvim-autopairs'

    use 'ja-ford/delaytrain.nvim'

    use 'nvim-lualine/lualine.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            -- Snippet Collection (Optional)
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use {
        'jose-elias-alvarez/null-ls.nvim',
        'jayp0521/mason-null-ls.nvim'
    }

end)
