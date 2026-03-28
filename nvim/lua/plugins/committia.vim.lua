return {
  'rhysd/committia.vim',
  config = function()
    vim.g['committia_hooks'] = {
      edit_open = function(info)
        vim.opt_local.spell = true
      end,
    }
  end,
}
