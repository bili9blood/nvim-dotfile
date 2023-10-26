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
    end
  },

  "folke/which-key.nvim",

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "/", mode = { "n", "x", "o" }, function()
        require("flash").jump() end
      },
    }
  },

  {'akinsho/toggleterm.nvim', version = "*", config = true},

  {'kyazdani42/nvim-tree.lua', dependencies = 'kyazdani42/nvim-web-devicons'},

  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
      "moll/vim-bbye"
    }
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" }
  },
  "arkav/lualine-lsp-progress",

  {
    'nvim-telescope/telescope.nvim',
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  { 'glepnir/dashboard-nvim', event = 'VimEnter' },

  'ahmedkhalf/project.nvim',

  {
    'nvim-treesitter/nvim-treesitter',
    build = function ()
      vim.cmd('TSUpdate')
    end,
  },

  {
    "williamboman/mason.nvim",
    config = function ()
      require('mason').setup()
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
    config = function ()
      require("ibl").setup()
    end
  },
  "tami5/lspsaga.nvim",

  "mhartington/formatter.nvim",

  -- DAP
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  {
    "jay-babu/mason-nvim-dap.nvim",
    config = function ()
      require("mason-nvim-dap").setup()
    end,
  }
});

