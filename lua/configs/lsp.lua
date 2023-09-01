local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
    return
end

local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- clangd
nvim_lsp.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
-- gopls
nvim_lsp.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
-- python
nvim_lsp.pylsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
-- bash
nvim_lsp.bashls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
-- TeX
nvim_lsp.texlab.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    texlab = {
      build = {
        onSave = true,
        forwardSearchAfter = true,
        args = { '-lualatex' },
      },
      forwardSearch = {
        executable = 'zathura',
        args = { '%p', '--synctex-forward=%l:1:%f' },
      },
      chktex = {
        onOpenAndSave = true,
      },
      latexindent = {
        modifyLineBreaks = true,
      },
    }
  }
})
--rust
nvim_lsp.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})


