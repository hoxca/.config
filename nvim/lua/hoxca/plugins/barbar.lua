return {
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },

    init = function() vim.g.barbar_auto_setup = false end,
    opts = {

      animation = true, 
      tabpages = true,
      highlight_inactive_file_icons = false,
      highlight_visible = true,
      icons = {
        buffer_index = false,
        buffer_number = false,
        button = '',
        separator_at_end = false,
        -- Configure the icons on the bufferline when modified or pinned.
        -- Supports all the base icon options.
        modified = {button = '●'},
        pinned = {button = '', filename = true},
        -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
        preset = 'powerline',

      },
    },
  },
}
