local import_cmp, cmp = pcall(require, "cmp")
if not import_cmp then
  return
end
local import_luasnip, luasnip = pcall(require, "luasnip")
if not import_luasnip then
  return
end

require("cmp").setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lsp_signature_help" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = "luasnip" },
    { name = "buffer", keyword_length = 1 },
  },

  window = {
    documentation = {
      border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
    },
    completion = {
      border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
    },
  },

  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
        -- this will auto complete if our cursor in next to a word and we press tab
        -- elseif has_words_before() then
        --     cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<Enter>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm({ select = true })
      end
    end, { "i", "s" }),
  },
})
