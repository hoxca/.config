return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"fredrikaverpil/neotest-golang",
		},
		config = function()
			local config = {
				runner = "gotestsum",
			}
			require("neotest").setup({
				adapters = {
					require("neotest-golang")(config),
				},
			})
		end,
	},
}
