require ('plugins')
require ('settings')
require ('lualine')
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
require('lualine').setup()

