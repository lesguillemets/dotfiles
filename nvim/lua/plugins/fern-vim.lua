return {
  {
    'lambdalisue/vim-fern',
    config = function()
      -- l で open までは行ってほしくないので， expand までのマップに上書きする
      vim.api.nvim_create_augroup('vim-fern-config', {})
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'fern' },
        group = 'vim-fern-config',
        command = "nmap <buffer><nowait> l <Plug>(fern-action-expand)"
      })
      -- show dot files
      vim.g['fern#default_hidden'] = 1
    end
  },
  {
    'lambdalisue/vim-fern-git-status',
    dependencies = { "lambdalisue/vim-fern" },
  },
  {
    'lambdalisue/vim-fern-hijack',
    dependencies = { "lambdalisue/vim-fern" },
  }
}
