vim.lsp.config['gopls'] = {
  cmd = { 'gopls' },
  filetypes = { 'go' },
  settings = { },
}

vim.lsp.enable('gopls')
