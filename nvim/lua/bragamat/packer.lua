-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'ryanoasis/vim-devicons'
  use 'nvim-tree/nvim-web-devicons'

  use { 'alexghergh/nvim-tmux-navigation', config = function()
    local nvim_tmux_nav = require('nvim-tmux-navigation')
    nvim_tmux_nav.setup {
      disable_when_zoomed = true -- defaults to false
    }

    vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
    vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
    vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
    vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
    --vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
    --vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
  end }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use({ "kelly-lin/telescope-ag", requires = { { "nvim-telescope/telescope.nvim" } } })
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  -- use {
  --   'nvim-tree/nvim-tree.lua',
  --   requires = {
  --     'nvim-tree/nvim-web-devicons', -- optional, for file icons
  --   },
  --   tag = 'nightly'               -- optional, updated every week. (see issue #1193)
  -- }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },          -- Required
      { 'williamboman/mason.nvim' },        -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },      -- Required
      { 'hrsh7th/cmp-nvim-lsp' },  -- Required
      { 'hrsh7th/cmp-buffer' },    -- Optional
      { 'hrsh7th/cmp-path' },      -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },  -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },          -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }
  use('nkrkv/nvim-treesitter-rescript')
  use('vim-ruby/vim-ruby')
  use({
    "kylechui/nvim-surround",
    tag = "*",   -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use ("preservim/nerdtree")
end)
