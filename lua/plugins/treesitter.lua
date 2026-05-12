return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        -- LazyVim config for treesitter
        indent = { enable = true }, ---@type lazyvim.TSFeat
        highlight = { enable = true }, ---@type lazyvim.TSFeat
        folds = { enable = false }, ---@type lazyvim.TSFeat
        ensure_installed = {
            "bash",
            "c",
            "diff",
            "go",
            "gomod",
            "gosum",
            "gowork",
            "html",
            "javascript",
            "jsdoc",
            "json",
            "jsonc",
            "latex",
            "lua",
            "luadoc",
            "luap",
            "markdown",
            "markdown_inline",
            "printf",
            "python",
            "query",
            "regex",
            "rust",
            "toml",
            "tsx",
            "typescript",
            "vim",
            "vimdoc",
            "xml",
            "yaml",
        },
    },
}
