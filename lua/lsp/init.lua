require("lsp.lualsp")
require("lsp.html")
require("lsp.rust")
require("lsp.python")
require("lsp.clangd")
require("lsp.java")
require("lsp.go")

-- vim.keymap.set("n", "<leader>g[", function() vim.diagnostic.jump({
--         count=1,
--         wrap=true,
--     })
-- end)
-- vim.keymap.set("n", "<leader>g]", function() vim.diagnostic.jump({
--         count=-1,
--         wrap=true,
--     })
-- end)
-- vim.keymap.set("n", "g[", function() vim.diagnostic.jump({
--         count=1,
--         wrap=true,
--         severity=vim.diagnostic.severity.ERROR,
--     })
-- end)
-- vim.keymap.set("n", "g]", function() vim.diagnostic.jump({
--         count=-1,
--         wrap=true,
--         severity=vim.diagnostic.severity.ERROR,
--     })
-- end)

vim.keymap.set("n", "ge", function() vim.diagnostic.setqflist({
    open=false,
    severity=vim.diagnostic.severity.ERROR,
}) end)

vim.keymap.set("n", "<leader>ge", function() vim.diagnostic.setqflist({
    open=false,
}) end)
vim.keymap.set("n", "gD", function()
    require("telescope.builtin").lsp_definitions()
end, { noremap = true, silent = true, desc = 'Go to global scope definition' })

vim.keymap.set('n', 'gK', function()
    local new_config = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })
