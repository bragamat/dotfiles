-- nnoremap <C-t> :NERDTreeToggle<CR>
vim.keymap.set("n", "<C-\\>", ":NERDTreeToggle<CR>")
----vim.g.loaded_netrw = 1
----vim.g.loaded_netrwPlugin = 1
--vim.keymap.set("n", "<C-\\>", ":NvimTreeToggle<CR>")
--vim.keymap.set("n", "<S-I>", "<S-H>")
----vim.keymap.set("n", "<S-H>", "<S-I>")
---- set termguicolors to enable highlight groups
--vim.opt.termguicolors = true

---- empty setup using defaults
--require("nvim-tree").setup()

---- OR setup with some options
--require("nvim-tree").setup({
--  sort_by = "case_sensitive",
--  update_focused_file = {
--    update_root = true,
--  },
--  hijack_unnamed_buffer_when_opening = true,
--  renderer = {
--    group_empty = true,
--  },
--  filters = {
--    dotfiles = true,
--  },
--})
