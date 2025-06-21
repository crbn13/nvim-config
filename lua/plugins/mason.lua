if true then
  return {}
end

return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "arduino_language_server",
          -- We need to install clangd for arduino_language_server to work
          "clangd",
        },
      })
    end,
  },
}
