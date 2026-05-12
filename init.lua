require("harper")
require("lsp")
require("config.lazy")
vim.filetype.add({
    extension = { zcml = 'zcml' },
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = 'zcml',
    callback = function()
        vim.treesitter.start(0, 'xml')
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = 'python',
    callback = function()
        vim.wo.foldmethod = 'indent'
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = 'lua',
    callback = function()
        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    end
})
