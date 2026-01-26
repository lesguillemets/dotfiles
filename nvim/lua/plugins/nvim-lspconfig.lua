return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable( {
      'rust_analyzer',
      'pyright',
      'hls',
      'lua_ls',
      'marksman',
      'ts_ls'
    })
  end
}


