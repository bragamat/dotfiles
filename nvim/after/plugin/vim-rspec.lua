-- nnoremap <Leader>rs :call RunCurrentSpecFile()<CR>
-- nnoremap <Leader>rn :call RunNearestSpec()<CR>
-- nnoremap <Leader>rl :call RunLastSpec()<CR>
-- nnoremap <Leader>ra :call RunAllSpecs()<CR>


vim.api.nvim_set_keymap('n', "<leader>rs", ":call RunCurrentSpecFile()<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', "<leader>rn", ":call RunNearestSpec()<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', "<leader>rl", ":call RunLastSpec()<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', "<leader>ra", ":call RunAllSpecs()<CR>", { noremap = true, silent = false })
