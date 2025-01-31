vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gT", vim.lsp.buf.type_definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "ff", vim.lsp.buf.format)

vim.keymap.set("n", "<space>cr", vim.lsp.buf.rename)
vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action)

-- Quickfix
vim.keymap.set("n", "<space>qq", "<CMD>ccl<CR>")

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "cssls", "html", "grammarly", "rust_analyzer", "lua_ls" }
})

require 'lspconfig'.pyright.setup {}
require 'lspconfig'.lua_ls.setup {}
require 'lspconfig'.volar.setup {}
require 'lspconfig'.html.setup {}
require 'lspconfig'.clangd.setup {}
-- require'lspconfig'.phpactor.setup{}
require 'lspconfig'.intelephense.setup({
  settings = {
    intelephense = {
      environment = {
        phpVersion = "8.4.0"
      },
    }
  }
})
require 'lspconfig'.ts_ls.setup {}
require 'lspconfig'.smarty_ls.setup {}

-- format on save
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end
      })
    end
  end
})
