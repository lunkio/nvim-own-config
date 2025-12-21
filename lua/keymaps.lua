-- Define common options
local opts = {
    noremap = true, -- non-recursive
    silent = true,  -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set("n", "<C-w>H", [[<cmd>vertical resize +10<cr>]], opts)  -- make the window biger vertically
vim.keymap.set("n", "<C-w>L", [[<cmd>vertical resize -10<cr>]], opts)  -- make the window smaller vertically
vim.keymap.set("n", "<C-w>J", [[<cmd>horizontal resize +5<cr>]], opts) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "<C-w>K", [[<cmd>horizontal resize -5<cr>]], opts) -- make the window smaller horizontally by pressing shift and -

vim.keymap.set("n", "nt", [[<cmd>tabnew<cr>]], opts)
vim.keymap.set("n", "<leader>nt", [[<cmd>tabnext<cr>]], opts)
vim.keymap.set("n", "<leader>pt", [[<cmd>tabprevious<cr>]], opts)
vim.keymap.set("n", "<leader>ct", [[<cmd>tabclose<cr>]], opts)
-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
