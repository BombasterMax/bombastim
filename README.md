# bombastim
## Why do you need this?

Because neovim is light, minimalistic and rapidly fast IDE you may wanna use every day.
But for unexperienced user it can be untrivial to set up and use at first.
This files is plug&play solution if you wanna feel the power of nvim,
but don't want to spend hoursin config files yourself.
## How to use:

1. Clone a repo to a ~/.config/nvim folder.
1. Install Packer: plugin manager for nvim https://github.com/wbthomason/packer.nvim
1. Packer will install most plugins by itself. But you may still need to install some packages (zathura, texlive, etc). Just follow the errors you ran into.
1. You've all done!

## Features:
- packer 
- gruvbox theme
- transparent backgrpund (toogle in nvim)
- auto pairs
- mason
- lsp-servers
    - clang
    - gopls
    - pyls
    - bashls
    - texlab
    - rust
    - java
- treesitter
- telescope
- auto-completion
- file-manager via neotree
- pretty bottom line via lualine
- git signs support
and much more coming soon.
## How to modify?

Add new plugins in lua/plugins. 

New lsp-servers can be installed with mason in configured in lua/configs/lsp.lua.
