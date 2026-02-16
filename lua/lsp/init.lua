require("lsp.lualsp")
require("lsp.rust")
require("lsp.python")
require("lsp.clangd")
require("lsp.java")
require("lsp.go")

vim.keymap.set("n", "<leader>gep", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>gen", vim.diagnostic.goto_next)
vim.keymap.set('n', 'gK', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })
