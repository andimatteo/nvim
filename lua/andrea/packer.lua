-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	"ThePrimeagen/harpoon"
  }

  use {
	  "rose-pine/neovim",
	  name = "rose-pine",
	  config = function()
		  vim.cmd("colorscheme rose-pine")
	  end
  }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }

  use {
	'tpope/vim-fugitive'
  }

  use {
	'mbbill/undotree'
  }

   
  use "neovim/nvim-lspconfig" -- LSP servers
  use "hrsh7th/nvim-cmp"       -- Autocompletion engine
  use "hrsh7th/cmp-nvim-lsp"   -- LSP source for nvim-cmp
  use "L3MON4D3/LuaSnip"       -- Snippets engine
  use "saadparwaiz1/cmp_luasnip" -- Snippet completions
  use "numToStr/Comment.nvim" -- comment and uncomment

  use "ThePrimeagen/vim-be-good"

  use "wellle/context.vim"

  use "ojroques/vim-oscyank"

end)
