return {
    "windwp/nvim-ts-autotag",
    opts = {
        enable = true,
        filetypes = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "svelte", "jsx" },
    },
    config = function(_, opts)
        require("nvim-ts-autotag").setup(opts)
    end,
}

