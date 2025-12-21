-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },

    opts = {
        ensure_installed = {
            "bash", "c", "cpp", "lua", "luadoc", "vim", "vimdoc", "query",
            "javascript", "typescript", "tsx", "jsdoc", "json", "html", "css", "scss",
            "python", "go", "rust", "toml", "yaml", "markdown", "markdown_inline",
            -- 你常用语言继续加就行
        },
        sync_install = false,
        auto_install = true,
        ignore_install = {},

        highlight = { enable = true },
        indent = { enable = true },

        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-space>",
                node_incremental = "<C-space>",
                node_decremental = "<BS>",
            },
        },
    },


}
