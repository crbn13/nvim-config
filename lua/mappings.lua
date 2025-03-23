require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- map("i", "<F3>", require('lsp_signature').select_signature_key(), {desc = "SELF lspsignature select key?"} )
map("v", "<leader>f", vim.lsp.buf.format, { desc = "FORMAT??" } )
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
