require("lsp.lualsp")
require("lsp.rust")
require("lsp.python")
require("lsp.clangd")
require("lsp.java")

vim.keymap.set("n", "<leader>gep", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>gen", vim.diagnostic.goto_next)
