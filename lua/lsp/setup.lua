local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

local servers = {
	"lua_ls",
	"rust_analyzer",
	"clangd",
	"cmake",
	"volar",
	"cssls",
	"html",
  "emmet_ls",
	"jsonls",
}

mason_lspconfig.setup({
	ensure_installed = servers,
})

for _, srvName in pairs(servers) do
	local ok, config = pcall(require, "lsp.config." .. srvName)
	if ok then
		lspconfig[srvName].setup(config)
	else
		lspconfig[srvName].setup({})
	end
end

require("lsp.cmp")
require("lsp.ui")
