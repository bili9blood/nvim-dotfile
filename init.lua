require("options")
require("keymaps")
require("plugins")

-- Plugins Configs
require("config.nvim-tree")
require("config.bufferline")
require("config.lualine")
require("config.telescope")
require("config.dashboard")
require("config.project")
require("config.nvim-treesitter")
require("config.formatter")

require("colorscheme")

require("lsp.setup")

if vim.g.neovide then
  require("neovide")
end
