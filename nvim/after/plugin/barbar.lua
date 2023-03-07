local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }

-- map('n', ':qa', ':q', opts)
-- Move to previous/next
map('n', 'gT', '<Cmd>BufferPrevious<CR>', opts)
map('n', 'gt', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '1gt', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '2gt', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '3gt', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '4gt', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '5gt', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '6gt', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '7gt', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '8gt', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '9gt', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '0gt', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<leader>w', '<Cmd>BufferClose<CR>', opts)
-- map('n', ':q', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
