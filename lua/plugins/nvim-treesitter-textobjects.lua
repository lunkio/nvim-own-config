-- ~/.config/nvim/lua/plugins/treesitter-textobjects.lua
return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {
        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    ["ic"] = "@class.inner",
                    ["aa"] = "@parameter.outer",
                    ["ia"] = "@parameter.inner",
                    ["a,"] = "@parameter.outer", -- 部分语言参数用逗号分隔更准
                },
            },
            move = {
                enable              = true,
                set_jumps           = true,
                goto_next_start     = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
                goto_next_end       = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
                goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
                goto_previous_end   = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
            },
            swap = {
                enable = true,
                swap_next = { ["<leader>sp"] = "@parameter.inner" },
                swap_previous = { ["<leader>sP"] = "@parameter.inner" },
            },
        },
    },

    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
