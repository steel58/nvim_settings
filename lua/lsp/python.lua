-- uv tool install pyright@latest
vim.lsp.config['python_lsp'] = {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
      },
    },
  },
}

vim.lsp.enable('python_lsp')
