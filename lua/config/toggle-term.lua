local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
})

function _Lazygit_toggle()
  vim.notify("# 你好")
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<S-F10>", "<cmd>lua _Lazygit_toggle()<CR>", {noremap = true, silent = true})
