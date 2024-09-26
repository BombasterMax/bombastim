require ('plugins')
require ('settings')
require ('lualine')
vim.o.background = "dark" 
vim.cmd([[colorscheme tokyodark]])
require('lualine').setup()
-- custom key bindings
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<C-t>', '<Cmd>Yazi<CR>')
-- for gui clients
vim.opt.guifont = { "JetBrains Mono", ":h18" }
vim.g.typst_pdf_viewer = "evince"
-- copypaste for neovide
--
if vim.g.neovide == true then
  vim.keymap.set({ "n", "x" }, "<C-S-C>", '"+y', { desc = "Copy system clipboard" })
  vim.keymap.set({ "n", "x" }, "<C-S-V>", '"+p', { desc = "Paste system clipboard" })
end
