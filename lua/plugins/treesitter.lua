return {
  "romus204/tree-sitter-manager.nvim",
  config = function()
    require("tree-sitter-manager").setup({
      ensure_installed = {
        "go", "lua", "python", "xml", "bash",
        "json", "yaml", "toml", "html", "markdown",
        "rust",
      },
    })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'
      end,
    })

    vim.filetype.add({ extension = { zcml = "zcml" } })
    vim.treesitter.language.register("xml", "zcml")
  end,
}
