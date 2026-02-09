return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- 아이콘을 위해 필요합니다
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<CR>', desc = 'NeoTree (Root Dir)' },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<leader>e'] = 'close_window',
        },
      },
      -- 파일 탐색기가 열릴 때 현재 작업 디렉토리를 따라가도록 설정
      follow_current_file = {
        enabled = true,
      },
      -- 'node_modules', '.git' 등을 숨기고 싶다면 여기에 설정
      filtered_items = {
        visible = true, -- true로 하면 숨김 파일도 보임
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
