require("options")
require("keymaps")
require("plugins")

-- Plugins Configs
require("config.nvim-tree")
require("config.bufferline")
require("config.lualine")
require("config.toggle-term")
require("config.rainbow-delimiters")
require("config.telescope")
require("config.dashboard")
require("config.project")
require("config.nvim-treesitter")
require("config.formatter")
require("config.indent-blanklines")

require("colorscheme")

require("lsp.setup")

if vim.g.neovide then
	require("neovide")
end

