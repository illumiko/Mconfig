local map = require("utils.maps").map
local nmap = require("utils.maps").nmap
local imap = require("utils.maps").imap
local opts = require("utils.maps").opts

local ls = require("luasnip")

nmap("<Space>", "<NOP>", opts("wk"))
vim.g.mapleader = " "
-- vim.cmd([[inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"]])
-- [[Normal Mode]]

vim.cmd([[ "sets the close key for toggle term
" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-\> <Cmd>exe v:count1 . "ToggleTerm"<CR>
]])

--[[for wrapped lines]]
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj_position)", { noremap = true })
-- vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk_position)", { noremap = true })

--[[proper copy]]
map("v", "Y", '"+y', opts(""))
map("x", "y", '"+y', opts(""))

--[[Source config]]
nmap("<leader>R", ":source %<cr>", opts("Reload current file"))

--[[Quit]]
nmap("<leader>Q", ":wqa<CR>", opts("Quit"))

--[[focus Management]]
nmap("<C-f>", "FocusMaximise <CR>", opts("Max width"))

-- [[Norg]]
nmap("<leader>oNjtd", ":Neorg journal today<CR>", opts("Journal today"))
nmap("<leader>oNjty", ":Neorg journal yesterday<CR>", opts("Journal yesterday"))
nmap("<leader>oNjtt", ":Neorg journal tomorrow<CR>", opts("Journal tomorrow"))

--[[Format]]
nmap("<leader>F", ":FormatWrite<CR>", opts("Format"))

-- [[lsp]]
-- [[no hl]]
nmap("<Leader>H", ":set hlsearch!<CR>", opts("Clear hls"))

-- [[better split management]]
nmap("<C-h>", ":NavigatorLeft<CR>", opts("Window Left"))
nmap("<C-j>", ":NavigatorDown<CR>", opts("Window Down"))
nmap("<C-k>", ":NavigatorUp<CR>", opts("Window Up"))
nmap("<C-l>", ":NavigatorRight<CR>", opts("Window Right"))

-- [[swap windows]
nmap("<C-x>", "<C-w>x", opts(""))

--[[tabline]]
nmap("<leadert>tp", ":tabprevious<CR>", opts("Tab Prev"))
nmap("<leader>tn", ":tabnext<CR>", opts("Tab Next"))

-- [[buffer switch]]
nmap("<S-l>", ":BufferNext<CR>", opts(""))
nmap("<S-h>", ":BufferPrevious<CR>", opts(""))

-- Sort automatically by...
--[===[insert mode]===]

vim.keymap.set("i", "<c-s>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)

vim.keymap.set("i", "<c-e>", function()
	if ls.choice_active() then
		ls.change_choice(-1)
	end
end)

--better ESC
imap("jk", "<cmd>LuaSnipUnlinkCurrent<CR><ESC>", opts(""))

imap("<", "<", opts(""))

--[===[visiual mode]===]

--better indenting
map("v", "<", "<gv", opts(""))
map("v", ">", ">gv", opts(""))

--[===[visual block]===]
-- map('x', '<leader>c',':Commentary<CR>', opts(""))
--moving blocks of code
map("x", "K", ":move '<-2<CR>gv-gv", opts(""))
map("x", "J", ":move '>+1<CR>gv-gv", opts(""))
