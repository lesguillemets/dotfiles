return {
  "chrisbra/unicode.vim",
  init = function()
    vim.g.Unicode_no_default_mappings = true
  end,

  keys = {
    { "ga", "<Plug>(UnicodeGA)", mode = "n", desc = "Unicode character info" },
  },
}
