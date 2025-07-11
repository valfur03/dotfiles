return {
	-- High Contrast & Vivid Color Scheme based on Monokai Pro 
	{
		"sainnhe/sonokai",
		lazy = true,
	},

	{
		"neoclide/coc.nvim",
		branch = "release",
	},

	{
		"nvim-treesitter/nvim-treesitter",
		branch = 'main',
		lazy = false,
		build = ":TSUpdate",
		setup = function () 
			require("nvim-treesitter.configs").setup({
				-- A list of parser names, or "all"
				ensure_installed = "all",
			
				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,
			
				-- List of parsers to ignore installing (for "all")
				ignore_install = { "make", "yaml" },
			
				highlight = {
					-- `false` will disable the whole extension
					enable = true,
			
					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = false,
				},
			})
		end
	},

	-- SNIPPETS
	"SirVer/ultisnips",
	"mlaursen/vim-react-snippets",

	-- Vim plugin, insert or delete brackets, parens, quotes in pair
	"jiangmiao/auto-pairs",

	-- Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
	{
		"sindrets/diffview.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		}
	},

	-- Find, Filter, Preview, Pick. All lua, all the time.
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- continuously updated session files
	"tpope/vim-obsession",

	-- -- Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters.
	-- {
	-- 	"williamboman/mason.nvim",
	-- 	dependencies = {
	-- 		"neovim/nvim-lspconfig",
	-- 		"williamboman/mason-lspconfig.nvim",
	-- 	}
	-- },

	-- --  💻 Neovim setup for init.lua and plugin development with full signature help, docs and completion for the nvim lua API. 
	-- "folke/neodev.nvim",

	-- -- A completion plugin for neovim coded in Lua.
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	dependencies = {
	-- 		"hrsh7th/cmp-nvim-lsp",
	-- 	},
	-- },

	-- -- Snippet Engine for Neovim written in Lua.
	-- {
	-- 	"L3MON4D3/LuaSnip",
	-- 	dependencies = {
	-- 		"saadparwaiz1/cmp_luasnip",
  	-- 		"rafamadriz/friendly-snippets",
	-- 	},
	-- },

	-- -- Git integration for buffers
	-- "lewis6991/gitsigns.nvim",

	-- -- An asynchronous linter plugin for Neovim complementary to the built-in Language Server Protocol support.
	-- "mfussenegger/nvim-lint",

	-- "mhartington/formatter.nvim",
}
