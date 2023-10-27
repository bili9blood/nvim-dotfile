---@diagnostic disable: undefined-field
require("formatter").setup({
	filetype = {
		html = { require("formatter.filetypes.html").prettier },
		css = { require("formatter.filetypes.css").prettier },
		javascript = { require("formatter.filetypes.javascript").prettier },
		vue = { require("formatter.filetypes.vue").prettier },
		typescript = { require("formatter.filetypes.typescript").prettier },

		json = { require("formatter.filetypes.json").prettier },
		yaml = { require("formatter.filetypes.yaml").prettier },
		xml = { require("formatter.filetypes.xml").prettier },

		c = { require("formatter.filetypes.c").clangformat },
		cpp = { require("formatter.filetypes.cpp").clangformat },
		lua = { require("formatter.filetypes.lua").stylua() },
	},
})

-- format on save
vim.api.nvim_exec(
[[
    augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.lua FormatWrite
    augroup END
]],
	true
)
