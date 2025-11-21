return {
    "sindrets/diffview.nvim",
    keys = {
        { "<leader>do", mode = "n", "<cmd>DiffviewOpen -uno<CR>",     desc = "Diff view open" },
        { "<leader>dh", mode = "n", "<cmd>DiffviewFileHistory %<CR>", desc = "Diff view History" },
        { "<leader>dc", mode = "n", "<cmd>DiffviewClose<CR>",         desc = "Diff view close" },
    },
}
