-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":")
vim.keymap.set({ "n", "i" }, "<C-n>", "<leader>e")
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<leader>ci", "K")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
