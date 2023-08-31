-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'
  -- Gruvbox theme
  use { "ellisonleao/gruvbox.nvim" }
  -- Make background Transparent
  use({
        "xiyaowong/nvim-transparent",
        config = function()
            require("transparent").setup({
                extra_groups = {
                    "BufferLineTabClose",
                    "BufferlineBufferSelected",
                    "BufferLineFill",
                    "BufferLineBackground",
                    "BufferLineSeparator",
                    "BufferLineIndicatorSelected",
                },
                exclude_groups= {},
            })
        end,
    })
  -- bunch of lua stuff
  use("nvim-lua/plenary.nvim")
  -- Auto pairs
  use({
        "windwp/nvim-autopairs",
        config = function()
            require("configs.autopairs")
        end,
    })
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
  -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
        config = function()
            require("configs.treesitter")
        end,
    })

    use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- LSP
    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lsp")
        end,
    })

    use("onsails/lspkind-nvim")
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        --tag = "v<CurrentMajor>.*",
    })

    -- cmp: Autocomplete
    use({
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        config = function()
            require("configs.cmp")
        end,
    })

    use("hrsh7th/cmp-nvim-lsp")

    use({ "hrsh7th/cmp-path", after = "nvim-cmp" })

    use({ "hrsh7th/cmp-buffer", after = "nvim-cmp" })

    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
    -- Mason: Portable package manager
    use({
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    })

    use({
        "williamboman/mason-lspconfig.nvim", after = "mason.nvim",
        config = function()
            require("configs.mason-lsp")
        end,
    })

    -- File manager
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    })
  -- some advanced java crap
  use 'mfussenegger/nvim-jdtls'
  -- clang-format support
  use "rhysd/vim-clang-format"
  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
end)
