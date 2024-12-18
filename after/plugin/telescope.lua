require('telescope').load_extension('fzf')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>o', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = 'Telescope resume last search' })
vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope grep cursor string' })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope diagnostics buffer' })
vim.keymap.set("n", "<leader>en", function()
  builtin.find_files({
    prompt_title = 'Neovim Config',
    cwd = vim.fn.stdpath('config')
  })
end, { desc = 'Telescope find nvim config' })
vim.keymap.set("n", "<leader>ep", function()
  builtin.find_files({
    prompt_title = 'Neovim Packages',
    cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
  })
end, { desc = 'Telescope find nvim config' })
