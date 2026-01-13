return {
  'itchyny/lightline.vim',
  init = function()
      vim.cmd([[
        function LightLinePath()
          return fnamemodify(getcwd(), ':~')
        endfunction
      ]])
      vim.g.lightline = {
        colorscheme = 'jellybeans',
        component_function = { path = 'LightLinePath' },
        active = {
          left = {
            { 'mode', 'paste'},
            { 'readonly', 'relativepath', 'path', 'modified'},
          },
          right = {
            { 'lineinfo' },
            { 'fileformat', 'fileencoding', 'filetype' },
            { 'charvaluehex' },
          }
        },
        inactive = {
          left = {
            { 'absolutepath', 'modified' }
          },
          right = {
            { 'lineinfo' },
            { 'percent' }
          }
        },
        mode_map = {
          n = 'N',
          i = 'I',
          R = 'R',
          v = 'V',
          V = 'V-L',
          c = 'C',
          s = 'S',
          S = 'S-LINE',
          t = 'TERM',
        }
      }
      vim.g.lightline_tabline = {
        left = {
          { 'tabs' }
        },
        right = {
          { 'close' }
        }
      }
  end
}
