-- vim.opt.leader
vim.g.mapleader = " "

vim.keymap.set("v", "<leader>y", "\"*y<CR>")

-- vim.opt.split panes
vim.keymap.set("n", "vv", "<C-w>v<CR>")
vim.keymap.set("n", "ss", "<C-w>s<CR>")
vim.keymap.set("n", "<Leader><Leader>", "<c-^>")
vim.keymap.set("n", "<leader>//", ":nohlsearch<CR>")

vim.opt.backspace = "2"


vim.opt.wrap          = true
vim.wo.wrap           = true
vim.wo.linebreak      = true
vim.wo.list           = false

vim.opt.hlsearch      = true
vim.opt.showcmd       = true
vim.opt.incsearch     = true
vim.opt.laststatus    = 2
vim.opt.autowrite     = true
vim.opt.ignorecase    = true
vim.opt.smartcase     = true
vim.opt.showmode      = true
vim.opt.visualbell    = true
vim.opt.modeline      = true
vim.opt.modelines     = 5
vim.opt.tabstop       = 2
vim.opt.softtabstop   = 2
vim.opt.shiftwidth    = 2
vim.opt.shiftround    = true
vim.opt.expandtab     = true
vim.opt.textwidth     = 80
vim.opt.colorcolumn   = "80"

vim.wo.number         = true
vim.wo.relativenumber = true

vim.g.cursorline      = true
vim.g.noswapfile      = true
vim.g.wrap            = true
vim.opt.termguicolors = true
vim.opt.scrolloff     = 8
vim.opt.signcolumn    = "yes"
