vim.lsp.config['clangd'] = {
  cmd = { "clangd" },
  filetypes = { "c", "cpp" },
  settings = { },
}

vim.lsp.enable('clangd')
