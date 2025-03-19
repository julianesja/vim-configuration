-- lua/core/keymaps.lua

local keymap = vim.keymap

-- Usa espacio como tecla líder
vim.g.mapleader = " "

-- Explorador de archivos (abre/cierra con <leader>e)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Guardar archivo con Ctrl + s
keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })

-- Moverse por las ventanas con Ctrl + h/j/k/l
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })