return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-mini/mini.icons" },
    keys = {
        { "<leader>ff", function() require("fzf-lua").files() end,     desc = "Search over files" },
        { "<leader>fg", function() require("fzf-lua").git_files() end, desc = "Search over git files" },
        { "<leader>fc", function() require("fzf-lua").live_grep() end, desc = "Live grep" },
        { "<leader>fr", function() require("fzf-lua").resume() end,    desc = "Resume fzf-lua" },
    },
}
