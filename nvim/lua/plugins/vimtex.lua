return {
  "lervag/vimtex",
  ft = {"tex", "plaintex", "latex"},
  init = function()
    vim.g.vimtex_syntax_conceal_disable = 1
  end
}
