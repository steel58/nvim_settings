vim.lsp.config['rust_ls'] = {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml', 'rust-project.json', '.git' },
    settings = {
        ["rust-analyzer"] = {},
    },
}
vim.lsp.enable('rust_ls')
