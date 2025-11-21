-- lua/plugins/rainbow-delimiters.nvim.lua
return {
    "hiphish/rainbow-delimiters.nvim",
    event = { "BufReadPost", "BufNewFile" }, -- 和 treesitter 同步加载
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
        local rainbow_delimiters = require("rainbow-delimiters")

        vim.g.rainbow_delimiters = {
            strategy = {
                [""] = rainbow_delimiters.strategy["global"], -- 所有文件都启用
                vim = rainbow_delimiters.strategy["local"],
                html = rainbow_delimiters.strategy["local"],
                latex = rainbow_delimiters.strategy["noop"], -- LaTeX 太乱了，很多人关掉
            },
            query = {
                [""] = "rainbow-delimiters", -- 默认查询
                lua = "rainbow-delimiters",
                javascript = "rainbow-delimiters",
                typescript = "rainbow-delimiters",
                tsx = "rainbow-delimiters",
                html = "rainbow-delimiters",
                css = "rainbow-delimiters",
                -- 如果你想对某些语言用 reactor 查询（更精准但稍慢），可以加：
                -- jsx = "rainbow-delimiters-react",
            },
            highlight = {
                "RainbowDelimiterRed",
                "RainbowDelimiterYellow",
                "RainbowDelimiterBlue",
                "RainbowDelimiterOrange",
                "RainbowDelimiterGreen",
                "RainbowDelimiterViolet",
                "RainbowDelimiterCyan",
            },
            -- 可选：黑名单（某些文件类型完全禁用彩虹括号）
            blacklist = { "c", "cpp" }, -- C/C++ 用户通常不喜欢彩虹括号，太花
        }

        -- 如果你用 tokyonight / catppuccin / monokai 等主题，可以直接加这几行让颜色完美匹配
        vim.cmd([[
      highlight RainbowDelimiterRed    guifg=#f7768e
      highlight RainbowDelimiterYellow guifg=#e0af68
      highlight RainbowDelimiterBlue   guifg=#7aa2f7
      highlight RainbowDelimiterOrange guifg=#ff9e64
      highlight RainbowDelimiterGreen  guifg=#9ece6a
      highlight RainbowDelimiterViolet guifg=#bb9af7
      highlight RainbowDelimiterCyan   guifg=#7daea3
    ]])
    end,
}
