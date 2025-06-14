-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set("n", "gl", "$", { silent = true })
vim.keymap.set("n", "gh", "0", { silent = true })
vim.keymap.set("n", "<leader>y", "Flash", { silent = true, desc = "Jump to Flash" })
vim.keymap.set("v", "io", "<ESC>")

-- vim.keymap.set("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true })
--
--
