return {
  'olexsmir/gopher.nvim',
  ft = 'go',
  dependencies = {
    'mfussenegger/nvim-dap',
    'leoluz/nvim-dap-go',
  },
  opts = {
    gotag = {
      transform = 'snakecase',
      default_tag = '',
    },
  },
  config = function(_, opts)
    require('gopher').setup(opts) -- Pass the `opts`!
    vim.schedule(function()
      vim.cmd 'GoInstallDeps'
    end)
  end,
}
