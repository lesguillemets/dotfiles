return {
  {
    "hrsh7th/vim-vsnip",
    config=function()
      vim.keymap.set(
        {'i', 's'},
        '<C-j>',
        "vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>'",
        { expr = true, remap=true, replace_keycodes=false }
      )
      -- " Expand or jump
      vim.keymap.set(
        {'i', 's'},
        '<F3>',
        "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<F3>'",
        { expr = true, remap=true, replace_keycodes=false }
      )
      -- " Jump forward or backward
      vim.keymap.set(
        {'i', 's'},
        '<F2>',
        "vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)'  : '<F2>'",
        { expr = true, remap=true }
      )
      vim.keymap.set(
        {'i', 's'},
        '<F1>',
        "vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)'  : '<F1>'",
        { expr = true, remap=true }
      )
    end
  },
  {
    "hrsh7th/vim-vsnip-integ"
  },
  {
    "lesguillemets/kagisnippets"
  },
}
