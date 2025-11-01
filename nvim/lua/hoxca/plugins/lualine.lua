return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
  local lualine = require("lualine")

  lualine.setup({
    icons_enabled = true,
    options = {
      theme = "gruvbox-material",
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch' },
      lualine_c = { { 'diff', colored = true, symbols = { added = ' ', modified = ' ', removed = ' ' } }, 'filename' },
      lualine_x = { 'encoding' },
      lualine_y = { 'filetype' },
      lualine_z = { 'location'},
    }
  })
  end
}

