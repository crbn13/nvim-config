-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.lsp.enable('clangd')
vim.api.nvim_set_option_value("clipboard", "unnamed", { scope = "global" })
vim.api.nvim_set_option_value("wrap", true, { scope = "global" })
vim.g.autoformat = false

vim.filetype.add({
  extension = {
    tpp = "cpp",
  },
})
