return require("packer").startup(function()
    -- Packer itself
    use("wbthomason/packer.nvim")

    -- Speedup nvim
    use("lewis6991/impatient.nvim")

    -- Colorschemes
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")
    use("tanvirtin/monokai.nvim")
    use("EdenEast/nightfox.nvim")
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })



    -- Simple statusline written in Lua
    use("nvim-lualine/lualine.nvim")

    -- Bufferline
    use("akinsho/bufferline.nvim")

    -- Treesiter
    use("nvim-treesitter/nvim-treesitter")

    -- File Explorer
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
        }
    })

    -- Autopairs
    use({
	    "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup({}) end
    })

    -- Completion Engine
    use("hrsh7th/nvim-cmp")

    -- Path Completion
    use("hrsh7th/cmp-path")

    -- LSP Completion
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")

    -- Quickstart Config for LSP
    use("neovim/nvim-lspconfig")

    -- LSP Icons
    use("onsails/lspkind.nvim")

    -- Mason
    use("williamboman/mason.nvim")

    -- Lua Snippet
    --    use("L3MON4D3/LuaSnip")

    -- Popup API writen in Lua
    use("nvim-lua/popup.nvim")

    -- Useful Lua functions
    use("nvim-lua/plenary.nvim")

    -- Greatest Fuzzy Finder ever
    use("nvim-telescope/telescope.nvim")

    use("vim-pandoc/vim-pandoc")
    use("junegunn/goyo.vim")
    use("preservim/vim-markdown")
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
end)
