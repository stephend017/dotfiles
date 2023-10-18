-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { 'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end } 	

	use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) 
	use( 'nvim-treesitter/playground')

	use('theprimeagen/harpoon') 
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	

	use { 
		'VonHeikemen/lsp-zero.nvim',
		requires = {


			-- LSP manual management
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'}
		}
	
	}







end)
