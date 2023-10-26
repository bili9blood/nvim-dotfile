local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.setup({
  theme = 'hyper',
  config = {
    week_header = {
      enable = true,
    },
    project = { enable = false },
    shortcut = {
      { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Projects',
        group = 'DiagnosticHint',
        action = 'Telescope projects',
        key = 'p',
      },
      { desc = '󰿅 Quit', action = 'qa!', key = 'q' }
    },
  },
})
