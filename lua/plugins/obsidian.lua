return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ft = 'markdown',
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false,
    workspaces = {
      -- {
      --   name = 'personal',
      --   path = '~/vaults/personal',
      -- },
      {
        name = 'work',
        path = 'C:/Users/Jack.Hensley/OneDrive - KH/Documents/notes/workvault',
      },
    },
  },
}
