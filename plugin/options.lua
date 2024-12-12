local opt = vim.opt

----- Interesting Options -----

-- You have to turn this one on :)
opt.inccommand = "split"

-- Best search settings :)
opt.smartcase = true
opt.ignorecase = true

----- Personal Preferences -----
opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"
opt.shada = { "'10", "<0", "s10", "h" }

vim.opt.clipboard:append "unnamedplus"
vim.opt.textwidth = 100
vim.opt.termguicolors = true

-- Don't have `o` add a comment
opt.formatoptions:remove "o"

-- Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Tab of 2 spaces
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.softtabstop = 2
-- opt.autoindent = true
-- opt.smartindent = true

-- Set color column to 80
opt.colorcolumn = "80"
-- Color to yellow

vim.opt.undofile = true
