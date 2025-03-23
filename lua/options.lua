require "nvchad.options"

-- add yours here!
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.cmd("tnoremap <Esc> <C-\\><C-n>")
vim.cmd("Nvdash")
require("gitsigns").setup()
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
vim.keymap.set({ 'n' }, '<C-k>', function()
    require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })

vim.keymap.set({ 'n' }, '<Leader>k', function()
    vim.lsp.buf.signature_help()
end, { silent = true, noremap = true, desc = 'toggle signature' })
