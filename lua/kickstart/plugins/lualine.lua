return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'gruvbox',
        globalstatus = true,
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = {
          { 'filename', path = 2 }, -- shows relative path
          'diagnostics',
        },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = {
          function()
            return ' ' .. os.date '%R'
          end,
        },
      },
    }
  end,
}
