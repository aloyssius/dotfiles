local discipline = require("craftzdog.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
-- keymap.set("n", "x", '"_x')
-- keymap.set("n", "<Leader>p", '"0p')
-- keymap.set("n", "<Leader>P", '"0P')
-- keymap.set("v", "<Leader>p", '"0p')
-- keymap.set("n", "<Leader>c", '"_c')
-- keymap.set("n", "<Leader>C", '"_C')
-- keymap.set("v", "<Leader>c", '"_c')
-- keymap.set("v", "<Leader>C", '"_C')
-- keymap.set("n", "<Leader>d", '"_d')
-- keymap.set("n", "<Leader>D", '"_D')
-- keymap.set("v", "<Leader>d", '"_d')
-- keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
-- keymap.set("n", "+", "<C-a>")
-- keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
-- keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
-- keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

keymap.set("n", "..", "<cmd> bnext <CR>", opts)
keymap.set("n", ",,", "<cmd> bprevious <CR>", opts)
keymap.set("n", "tt", "<cmd> bd! <CR>", opts)

keymap.set('n', 'w', 'e')
keymap.set('n', 'e', 'b')
keymap.set('v', 'w', 'e')
keymap.set('v', 'e', 'b')


-- Jumplist
-- keymap.set("n", "<C-m>", "<C-i>", opts)

-- Quit
keymap.set('', '<C-q>', ':q!<CR>')

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "<C-left>", "<C-w>h")
keymap.set("n", "<C-up>", "<C-w>k")
keymap.set("n", "<C-down>", "<C-w>j")
keymap.set("n", "<C-right>", "<C-w>l")

-- Resize window
keymap.set("n", "<C-l>", "<C-w><")
keymap.set("n", "<C-k>", "<C-w>>")
keymap.set("n", "<C-h>", "<C-w>+")
keymap.set("n", "<C-j>", "<C-w>-")

-- Diagnostics
-- keymap.set("n", "<C-j>", function()
-- 	vim.diagnostic.goto_next()
-- end, opts)

-- keymap.set("n", "<leader>r", function()
-- 	require("craftzdog.hsl").replaceHexWithHSL()
-- end)

-- keymap.set("n", "<leader>i", function()
-- 	require("craftzdog.lsp").toggleInlayHints()
-- end)
