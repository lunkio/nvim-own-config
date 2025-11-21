-- ~/.config/nvim/lua/plugins/treesitter-context.lua
return {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPost", "BufNewFile" }, -- 很多人用 VeryLazy，这里用 BufRead 更快触发
    dependencies = "nvim-treesitter/nvim-treesitter",

    opts = {
        enable = true,
        max_lines = 3,
        trim_scope = "outer",
        min_window_height = 20, -- 窗口太小就不显示
        multiline_threshold = 4,
        mode = "cursor",        -- 或者 "topline"，看个人喜好
    },
}
