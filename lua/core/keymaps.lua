vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("n", "H", "5h")
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")
keymap.set("n", "L", "5l")
keymap.set("n", "C", "J")

keymap.set("v", "H", "5h")
keymap.set("v", "J", "5j")
keymap.set("v", "K", "5k")
keymap.set("v", "L", "5l")

keymap.set("n", "Q", ":q<CR>")
keymap.set("n", "S", ":w<CR>")

keymap.set("n", "<leader><CR>", ":nohl<CR>")
keymap.set("n", "<leader>sc", ":set spell!<CR>")

keymap.set("n", "tn", ":tabe<CR>")
keymap.set("n", "th", ":-tabnext<CR>")
keymap.set("n", "tl", ":+tabnext<CR>")

-- window split
keymap.set("n", "sh", ":set nosplitright<CR>:vsplit<CR>")
keymap.set("n", "sl", ":set splitright<CR>:vsplit<CR>")
keymap.set("n", "sj", ":set splitbelow<CR>:split<CR>")
keymap.set("n", "sk", ":set nosplitbelow<CR>:split<CR>")

keymap.set("n", "<leader>l", "<C-w>l")
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>k", "<C-w>k")

keymap.set("n", "<up>", ":res +5<CR>")
keymap.set("n", "<down>", ":res -5<CR>")
keymap.set("n", "<left>", ":vertical resize -5<CR>")
keymap.set("n", "<right>", ":vertical resize +5<CR>")
