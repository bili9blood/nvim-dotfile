-- define common options
local opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show message
}

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-----------------
-- Normal mode --
-----------------

-- 上下滚动浏览
vim.keymap.set("n", "<C-j>", "4j", opts)
vim.keymap.set("n", "<C-k>", "4k", opts)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
vim.keymap.set("n", "<C-u>", "9k", opts)
vim.keymap.set("n", "<C-d>", "9j", opts)

-- Better window navigation
vim.keymap.set("n", "<A-h>", "<C-w>h", opts)
vim.keymap.set("n", "<A-j>", "<C-w>j", opts)
vim.keymap.set("n", "<A-k>", "<C-w>k", opts)
vim.keymap.set("n", "<A-l>", "<C-w>l", opts)

vim.keymap.set("t", "<A-h>", "<cmd>wincmd h<CR>", opts)
vim.keymap.set("t", "<A-j>", "<cmd>wincmd j<CR>", opts)
vim.keymap.set("t", "<A-k>", "<cmd>wincmd k<CR>", opts)
vim.keymap.set("t", "<A-l>", "<cmd>wincmd l<CR>", opts)

-- window operations
vim.keymap.set("n", "s", "", opts)
vim.keymap.set("n", "sv", ":vsp<CR>", opts)
vim.keymap.set("n", "sh", ":sp<CR>", opts)
vim.keymap.set("n", "sc", "<C-w>c", opts)
vim.keymap.set("n", "so", "<C-w>o", opts)

-- 左右比例控制
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "s,", ":vertical resize -20<CR>", opts)
vim.keymap.set("n", "s.", ":vertical resize +20<CR>", opts)
-- 上下比例
vim.keymap.set("n", "sj", ":resize +10<CR>", opts)
vim.keymap.set("n", "sk", ":resize -10<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
-- 等比例
vim.keymap.set("n", "s=", "<C-w>=", opts)

-----------------
-- Visual mode --
-----------------

-- visual模式下缩进代码
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
-- 上下移动选中文本
vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv", opts)
-- 在visual 模式里粘贴不要复制
vim.keymap.set("v", "p", '"_dP', opts)

-- nvim-tree
vim.keymap.set("n", "<A-m>", ":NvimTreeToggle<CR>", opts)

-- bufferline
-- 左右Tab切换
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)
-- 关闭
--"moll/vim-bbye"
vim.keymap.set("n", "<C-w>", ":Bdelete!<CR>", opts)
vim.keymap.set("n", "<leader>bl", ":BufferLineCloseRight<CR>", opts)
vim.keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opts)
vim.keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>", opts)

-- Telescope
-- 查找文件
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", opts)
-- 全局搜索
vim.keymap.set("n", "<C-f>", ":Telescope live_grep<CR>", opts)

-- rename
vim.keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", opts)
-- code action
vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", opts)
-- go xx
vim.keymap.set("n", "gd", ":Lspsaga preview_definition<CR>", opts)
vim.keymap.set("n", "gh", ":Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
vim.keymap.set("n", "gr", ":Lspsaga lsp_finder<CR>", opts)
-- diagnostic
vim.keymap.set("n", "gp", ":Lspsaga show_line_diagnostics<CR>", opts)
vim.keymap.set("n", "gk", ":Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "gj", ":Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "<leader>f", ":Format<CR>", opts)

-- ToggleTerm
vim.keymap.set("n", "<leader>T", "<cmd>ToggleTerm<CR>", opts)
vim.keymap.set("n", "<leader>tg", "<cmd>lua _Lazygit_toggle()<CR>", opts)
