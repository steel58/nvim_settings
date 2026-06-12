local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snipitSupport = true

vim.lsp.config('html', {
    capabilities = capabilities,
    filetypes = { 'html', 'pt' },
})

vim.lsp.enable('html')
