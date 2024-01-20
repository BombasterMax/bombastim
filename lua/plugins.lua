-- Plugins list
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'
  -- Gruvbox theme
  use { "ellisonleao/gruvbox.nvim" }
  -- Transparent background
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
  -- other plugins dependence
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
  -- git signs support
  use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
  require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  attach_to_untracked = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
  },
  current_line_blame_formatter_opts = {
    relative_time = false
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}
  end
}
-- comments stuff
  use 'terrortylor/nvim-comment'
-- some highlighting shit
  use 'RRethy/vim-illuminate'
  -- some advanced java crap
  use 'mfussenegger/nvim-jdtls'
  -- clang-format support
  use "rhysd/vim-clang-format"
end)
