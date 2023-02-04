-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- color schemes 
  use { "ellisonleao/gruvbox.nvim" }

  use 'folke/tokyonight.nvim'

  -- Lualine 
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Treesitter
  use {
	'nvim-treesitter/nvim-treesitter',
	run = function() require("nvim-treesitter.install").update { with_sync = true } end
  } 

  use 'nvim-treesitter/playground'

  -- Harpoon 
  use 'ThePrimeagen/harpoon' 

  -- Undotree 
  use 'mbbill/undotree' 

  -- Fugitive
  use 'tpope/vim-fugitive'

  -- LSP Zero 
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }

  -- Nvim Tree and its icons
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  } 

  use 'nvim-tree/nvim-web-devicons'

  -- Nvim R 
  use 'jamespeapen/Nvim-R'  

  -- Dashboard
  use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup{
        theme = 'hyper',
        config = {
            week_header = {
                enable = true,
            },
            shortcut = {
                { desc = ' Update', group = '@property', action = 'PackerSync', key = 'u' },
                {
                    desc = ' Files',
                    group = 'Label',
                    action = 'Telescope find_files',
                    key = 'f',
                },
                {
                    desc = ' Home',
                    group = 'DiagnosticHint',
                    action = 'Telescope find_files cwd=~',
                    key = 'a',
                },
                {
                    desc = ' dotfiles',
                    group = 'Number',
                    action = 'Telescope find_files cwd=~/.config/nvim',
                    key = 'd',
                },
            },
        },
    } 
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
    }
 
  -- LSPSaga
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = { {"nvim-tree/nvim-web-devicons"} }
  })
end)
