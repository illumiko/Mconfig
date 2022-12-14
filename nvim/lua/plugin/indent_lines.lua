vim.opt.list = true
vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup({
    colored_indent_levels = true,
	show_first_indent_level = true,
	use_treesitter = true,
	max_indent_increase = 1,
	show_trailing_blankline_indent = false,
})
