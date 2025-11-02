return {
    "williamboman/mason.nvim",                -- package management for lsp
    lazy = false,
    dependencies = {
        "williamboman/mason-lspconfig.nvim",  -- manage lsp configuration in mason (ensure_installed)
        "neovim/nvim-lspconfig",              -- communication between neovim and lsp
    },
    config = function()
        -- import mason and mason_lspconfig
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        -- NOTE: Moved these local imports below back to lspconfig.lua due to mason depracated handlers

        -- local lspconfig = require("lspconfig")
        -- local cmp_nvim_lsp = require("cmp_nvim_lsp")             -- import cmp-nvim-lsp plugin
        -- local capabilities = cmp_nvim_lsp.default_capabilities() -- used to enable autocompletion (assign to every lsp server config)

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            automatic_enable = false,
            -- servers for mason to install
            ensure_installed = {
                "lua_ls",    -- lua
                "ts_ls",     -- currently using a ts plugin
                "html",      -- html obviously
                "gopls",     -- golang 
                "marksman",  -- markdown
            },
        })

    end,
}
