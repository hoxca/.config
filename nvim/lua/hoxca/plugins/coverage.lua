return {
  {
    "andythigpen/nvim-coverage",
    lazy = true,
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- https://github.com/andythigpen/nvim-coverage/blob/main/doc/nvim-coverage.txt
      auto_reload = true,
      commands = true, -- create commands
      highlights = {
      	-- customize highlight groups created by the plugin
      	covered = { fg = "#C3E88D" },   -- supports style, fg, bg, sp (see :h highlight-gui)
      	uncovered = { fg = "#F07178" },
      },
      signs = {
      	-- use your own highlight groups or text markers
      	covered = { hl = "CoverageCovered", text = "▎" },
      	uncovered = { hl = "CoverageUncovered", text = "▎" },
      },
      summary = {
      	-- customize the summary pop-up
      	min_coverage = 80.0,      -- minimum coverage threshold (used for highlighting)
      },
      lang = {
        go = {
          coverage_file = vim.fn.getcwd() .. "/test/coverage.out",
        },
      },
    },
    config = function(_, opts)
      require("coverage").setup(opts)
    end,
  },
}
