vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
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
    use { 'neoclide/coc.nvim', branch = "release" }
    use 'neovim/nvim-lspconfig'
    -- File Explorer
    use {
        'nvim-tree/nvim-tree.lua',
        tag = 'nightly'
    }
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
