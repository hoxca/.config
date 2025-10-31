return {
	"nvim-telescope/telescope.nvim",
  -- using master to fix issues with deprecated to definition warnings 
	branch = "master", 
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", enabled = true },
		"nvim-tree/nvim-web-devicons",
		"andrew-george/telescope-themes",
    {"nvim-telescope/telescope-file-browser.nvim", enabled = true}
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

    telescope.load_extension("fzf")
    telescope.load_extension("themes")
    telescope.load_extension("file_browser")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {prompt_position = "top"},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
			extensions = {
				themes = {
					enable_previewer = true,
					enable_live_preview = true,
					persist = {
						enabled = true,
						path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua",
					},
				},
        file_browser = {
            path = "%:p:h", -- open from within the folder of your current buffer
            display_stat = false, -- don't show file stat
            grouped = true, -- group initial sorting by directories and then files
            hidden = true, -- show hidden files
            hide_parent_dir = true, -- hide `../` in the file browser
            hijack_netrw = true, -- use telescope file browser when opening directory paths
            prompt_path = true, -- show the current relative path from cwd as the prompt prefix
            use_fd = true -- use `fd` instead of plenary, make sure to install `fd`
        },
			},
		})

		-- Keymaps
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "-", ":Telescope file_browser<CR>", { desc = "Telescope Browser" })
		vim.keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>ps", builtin.treesitter, { desc = "Lists tree-sitter symbols" })
    vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>pk", builtin.keymaps, { desc = "List keymaps" })
		vim.keymap.set("n", "<leader>pw", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end, { desc = "Find Connected Words under cursor" })

		vim.keymap.set("n", "<leader>th", "<cmd>Telescope themes<CR>", { noremap = true, silent = true, desc = "Theme Switcher" })
    end,
}
