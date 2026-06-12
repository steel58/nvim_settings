require("harper")
require("lsp")
require("config.lazy")
vim.filetype.add({
    extension = { zcml = 'zcml' },
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    pattern = 'zcml',
    callback = function()
        vim.treesitter.start(0, 'xml')
    end
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    pattern = '*.py',
    callback = function()
        vim.wo.foldmethod = 'indent'
    end
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    pattern = '*.lua',
    callback = function()
        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    end
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    pattern = '*.xml',
    callback = function()
        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    end
})

vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
    pattern = '*.zcml',
    callback = function()
        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    end
})
