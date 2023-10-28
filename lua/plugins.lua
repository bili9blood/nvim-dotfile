local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "storm",
			transparent = true,
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				italic = {
					string = false,
					comments = true,
					operators = false,
					folds = true,
				},
			})
		end,
	},

	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
		keys = { { "gc", mode = { "n", "v" } }, { "gb", mode = { "n", "v" } } },
		event = "User FileOpened",
	},

	{
		"lewis6991/gitsigns.nvim",
		config = true,
		event = "User FileOpened",
		cmd = "Gitsigns",
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},

	{
		"b0o/schemastore.nvim",
		lazy = true,
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true, -- use a classic bottom cmdline for search
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
		},
		dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	},

	{
		"hiphish/rainbow-delimiters.nvim",
		event = "User FileOpened",
	},

	{
		"SmiteshP/nvim-navic",
		event = "User FileOpened",
	},

	"folke/which-key.nvim",

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"/",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
			},
		},
	},

	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	{
		"kyazdani42/nvim-tree.lua",
		dependencies = "kyazdani42/nvim-web-devicons",
		cmd = {
			"NvimTreeToggle",
			"NvimTreeOpen",
			"NvimTreeFocus",
			"NvimTreeFindFileToggle",
		},
		event = "User DirOpened",
	},

	{
		"akinsho/bufferline.nvim",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
			"moll/vim-bbye",
		},
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
	},
	"arkav/lualine-lsp-progress",

	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{ "glepnir/dashboard-nvim", event = "VimEnter" },

	"ahmedkhalf/project.nvim",

	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			vim.cmd("TSUpdate")
		end,
	},

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				github = {
					download_url_template = "https://ghproxy.com/github.com/%s/releases/download/%s/%s",
				},
			})
		end,
	},
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	-- 自动补全
	"hrsh7th/nvim-cmp",
	"hrsh7th/vim-vsnip",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"onsails/lspkind-nvim", -- 自动补全类型图标

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup()
		end,
	},
	"tami5/lspsaga.nvim",

	"mhartington/formatter.nvim",

	-- DAP
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	{
		"jay-babu/mason-nvim-dap.nvim",
		config = function()
			require("mason-nvim-dap").setup()
		end,
	},

	{
		"gerazov/toggle-bool.nvim",
		config = function()
			require("toggle-bool").setup({
				mapping = "<leader>tt",
				additional_toggles = {
					Yes = "No",
					On = "Off",
					["0"] = "1",
					Enable = "Disable",
					Enabled = "Disabled",
					First = "Last",
					Before = "After",
					Persistent = "Ephemeral",
					Internal = "External",
					Ingress = "Egress",
					Allow = "Deny",
					All = "None",
				},
			})
		end,
	},
}, {
	git = {
		url_format = "https://ghproxy.com/github.com/%s.git",
	},
})
