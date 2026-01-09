vim.cmd.source("~/.vim/base_config.vim")

require("config.lazy")
vim.cmd("colorscheme nightfox")

-- https://eiji.page/blog/neovim-highlight-on-yank/ and :h on_yank
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.hl.on_yank({ higroup='Visual', timeout = 300 })
  end,
})

vim.diagnostic.config({
  -- virtual_text = true,
  virtual_lines = true
})
