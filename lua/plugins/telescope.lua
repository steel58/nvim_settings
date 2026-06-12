local function config()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fs', builtin.current_buffer_fuzzy_find, { desc = 'Telescope search in current buffer' })
    vim.keymap.set('n', '<leader>hh', builtin.keymaps, { desc = 'Telescope find keymaps' })

    local conf = require("telescope.config").values

    -- local harpoon = require('harpoon')
    -- harpoon:setup({})

    -- local function toggle_telescope(harpoon_files)
    --     local file_paths = {}
    --     for _, item in ipairs(harpoon_files.items) do
    --         table.insert(file_paths, item.value)
    --     end

    --     require("telescope.pickers").new({}, {
    --         prompt_title = "Harpoon",
    --         finder = require("telescope.finders").new_table({
    --             results = file_paths,
    --         }),
    --         previewer = conf.file_previewer({}),
    --         sorter = conf.generic_sorter({}),
    --     }):find()
    -- end

    -- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    -- { desc = "Open harpoon window" })
end

return {
    'nvim-telescope/telescope.nvim', version = '*',
    branch = 'master',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = config,
}

