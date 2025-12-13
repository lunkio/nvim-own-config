-- Indentation
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "cpp", "c", "h", "hpp" },
    callback = function()
        vim.opt.tabstop = 2     -- the number of visual spaces per TAB
        vim.opt.softtabstop = 2 -- number of spaces in tab when editing
        vim.opt.shiftwidth = 2  -- insert 4 spaces on a tab
    end,
})

-- Create new keymapping for lsps
-- LspAttach: After an LSP Client performs "initialize" and attaches to a buffer.
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function()
        vim.keymap.set(
            "n",
            "gr",
            vim.lsp.buf.references,
            { noremap = true, silent = true, desc = "Lsp: Go to references" }
        )
        vim.keymap.set(
            "n",
            "gd",
            vim.lsp.buf.definition,
            { noremap = true, silent = true, desc = "Lsp: Go to definition" }
        )
        vim.keymap.set(
            "n",
            "gD",
            vim.lsp.buf.declaration,
            { noremap = true, silent = true, desc = "Lsp: Go to declaration" }
        )
        vim.keymap.set("n", "<leader>hv", vim.lsp.buf.hover,
            { noremap = true, silent = true, desc = "Lsp: Display information" })
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true, desc = "Lsp: Rename" })
        vim.keymap.set("n", "<leader>ft", function()
            require("conform").format({ async = true, lsp_fallback = true })
        end, { noremap = true, silent = true, desc = "Lsp: Format" })
        vim.diagnostic.config { virtual_text = true }
    end,
})

-- CursorHold: When the user doesn't press a key for the time specified with 'updatetime'
--             By default, `updatetime` is equal to 4000 ms
--
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, { focusable = false, source = "if_many" })
    end,
})
