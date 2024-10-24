return {
'neovim/nvim-lspconfig',
'hrsh7th/cmp-nvim-lsp',
'hrsh7th/cmp-buffer',
'hrsh7th/cmp-path',
'hrsh7th/cmp-cmdline',
'hrsh7th/nvim-cmp',
'saadparwaiz1/cmp_luasnip',
{'zbirenbaum/copilot-cmp',
config = function ()
	require("copilot_cmp").setup()
end},
}
