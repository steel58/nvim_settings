local function config()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
end
return {
  "mbbill/undotree",
  config = config,
}
