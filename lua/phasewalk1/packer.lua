vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- TreeSitter
    use({'nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'}})
    use 'nvim-treesitter/playground'
    -- Undotree
    use 'mbbill/undotree'
    -- Colors
    use 'rebelot/kanagawa.nvim'
    use 'edeneast/nightfox.nvim'
    use 'folke/tokyonight.nvim'
    use 'nanotech/jellybeans.vim'
    use 'nlknguyen/papercolor-theme'
    use 'preservim/vim-colors-pencil'
    -- Fugitive for git
    use 'tpope/vim-fugitive'
    -- Close parens/brackets/etc.
    use 'tmsvg/pear-tree'
    -- Language Servers
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    use { 'neoclide/coc.nvim', branch = "release" }
    -- File Explorer
    use {
        'nvim-tree/nvim-tree.lua',
        tag = 'nightly'
    }
    use 'theprimeagen/harpoon'
    -- Icons
    use 'nvim-tree/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'
    -- Ctags/outline
    use 'liuchengxu/vista.vim'
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Language util
    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'
    -- Aesthetic
    use 'xiyaowong/nvim-transparent'
    use 'mhinz/vim-startify'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Debug Adapter Protocol
    use 'mfussenegger/nvim-dap'
    -- Copilot
    use 'github/copilot.vim'
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
