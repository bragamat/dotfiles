Bragamat_config_file_path = "~/.config/nvim/init.lua"

function OpenBragamatConfig()
  print("opening bragamat\'s neovim config: ~/.config/nvim/init.lua")
  OpenConfigRC(Bragamat_config_file_path)
end

function OpenConfigRC(path)
  vim.cmd.edit(path)
  -- vim.cmd.edit_new("{vim.cmd.edit(path)}")
end

vim.api.nvim_set_keymap('n', "<C-y>", ":lua OpenBragamatConfig()<CR>", { noremap = true, silent = false })
