return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        version = ">=1.3.0",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason_lspconfig = require("mason-lspconfig")
        local mason = require("mason")
        local mason_tool_installer = require("mason-tool-installer")

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
            ensure_installed = {
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                "graphql",
                "emmet_ls",
                "prismals",
                "pyright",
                "ts_ls",
            },
            automatic_installation = true,
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint",
                "eslint_d",
            },
        })
    end,
}
