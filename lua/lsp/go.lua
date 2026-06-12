vim.lsp.config['gopls'] = {
  cmd = { 'gopls' },
  filetypes = { 'go' },
  root_markers = { 'go.mod', 'go.sum', '.git' },
  settings = { },
}

vim.lsp.enable('gopls')
