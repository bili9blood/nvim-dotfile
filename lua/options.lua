vim.g.clipboard = {
	name = "win32yank",
	copy = {
		["+"] = "win32yank.exe -i",
		["*"] = "win32yank.exe -i",
	},
	paste = {
		["+"] = "win32yank.exe -o",
		["*"] = "win32yank.exe -o",
	},
}
vim.o.clipboard = "unnamedplus"

vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.wrap = false
vim.opt.mouse = "a"
vim.o.wildmenu = true
vim.o.showtabline = 2
vim.o.showmode = false

-- Tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- UI config
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- Searching
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
