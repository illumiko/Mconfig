local util = require("formatter.util")
require("formatter").setup({
	filetype = {
		lua = {
			require("plugin.format.filetype_conf.lua").stylua,
		},
		javascript = {
			require("plugin.format.filetype_conf.javascript").prettiereslint,
			function()
				return {
					exe = "prettier-eslint",
					args = {
						"--tabWidth 2",
						"--stdin",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},
		typescript = {
			require("plugin.format.filetype_conf.typescript").prettiereslint,
		},
		go = {
			require("plugin.format.filetype_conf.go").goimports,
		},
	},
})
vim.cmd([[
augroup FormatAutogroup
  autocmd!
  autocmd FileType go autocmd BufWritePost * FormatWrite
augroup END
]])
