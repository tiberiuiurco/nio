vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gT", vim.lsp.buf.type_definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)

vim.keymap.set("n", "<space>cr", vim.lsp.buf.rename)
vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action)

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"cssls", "html", "grammarly", "rust_analyzer"}
})

require'lspconfig'.pyright.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.ts_ls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.clangd.setup{}
-- require'lspconfig'.phpactor.setup{}
require'lspconfig'.intelephense.setup{}
require'lspconfig'.smarty_ls.setup{}
