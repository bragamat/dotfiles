-- nnoremap <C-t> :NERDTreeToggle<CR>
-- local isOpen = vim.cmd("g:NERDTree.IsOpen()")

-- function ToggleNerdTree()
--   print(isOpen)
--   if isOpen then
--     vim.cmd(":NERDTreeToggle<CR>")
--   else
--     vim.cmd(":NERDTreeFind <CR>")
--   end
-- end
-- -- " ==== NERD tree
-- " Open the project tree and expose current file in the nerdtree with Ctrl-\
-- command! LocalCloseNerdTree call CloseNerdTree()

-- nnoremap <silent> <C-\> :LocalCloseNerdTree<cr>
-- vim.keymap.set("n", "<C-\\>", ":LocalCloseNerdTree<CR>")
-- vim.keymap.set("n", "<C-\\>", ":NERDTreeToggle<CR>")
vim.cmd("function! CloseNerdTree() \
  if g:NERDTree.IsOpen() \
    NERDTreeClose \
  else \
    NERDTreeFind \
  endif \
endfunction \
command! LocalCloseNerdTree call CloseNerdTree() \
nnoremap <silent> <C-\\> :LocalCloseNerdTree<cr> \
")
-- vim.keymap.set("n", "<C-\\>", ":lua ToggleNerdTree()<CR>")
-- vim.cmd("autocmd BufRead * call SyncTree()")
-- vim.api.autocmd("BufRead", "call SyncTree()")



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
