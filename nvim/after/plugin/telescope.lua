local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('v', '<C-p>', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
    builtin.load_extension("ag")
end)

