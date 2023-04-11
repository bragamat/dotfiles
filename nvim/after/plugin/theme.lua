require('rose-pine').setup({
  disable_background = true
})

function SetTheme(theme)
  theme = theme or "rose-pine"
  vim.cmd.colorscheme(theme)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetTheme()
