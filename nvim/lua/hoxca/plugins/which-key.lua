return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    triggers = {
      { "<auto>", mode = "nixsotc" },
      { "a", mode = { "n", "v" } },
    },
    spec = {
      { "<leader>", group = "+Leader" },
      { "<leader>p", group = "+Telescope" },
      { "<leader>w", group = "+Windows" },
    },
    preset = "helix",
  },
  keys = {
    {
      "<leader>,",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
