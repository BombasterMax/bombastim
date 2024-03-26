require ('plugins')
require ('settings')
require ('lualine')
vim.o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])
require('lualine').setup()
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
-- for gui clients
vim.opt.guifont = { "JetBrains Mono", ":h18" }
vim.g.typst_pdf_viewer = "evince"
