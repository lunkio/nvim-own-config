-- Remove global default key mapping
vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "gO")


vim.lsp.enable({ "clangd", "lua_ls", "bashls", "kotlin_lsp", "rust_analyzer" })
