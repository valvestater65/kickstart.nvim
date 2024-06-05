-- NeoTree Plugin configuration
-- From https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true,
        filtered_items = {
          hide_dotfiles = false,
        },
      },
      use_libuv_file_watcher = true, -- use OS level file watchers
    },
    window = {
      position = 'left',
    },
    popup_border_style = 'rounded',
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal<CR>', {})
  end,
}
