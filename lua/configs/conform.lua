local options = {
    formatters = {
        my_formatter = {
            command = "clang-format",
            args = { "-style=webkit" },
            },
        },
    formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "my_formatter" }
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
