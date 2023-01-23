local builtin = require('telescope.builtin')

require('telescope').setup({
    pickers = {
        buffers = {
            mappings = {
                i = {
                    ["<C-d>"] = "delete_buffer",
                }
            }
        }
    }
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('harpoon')

vim.keymap.set('n', '<leader>ss', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sr', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sgc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>sgb', builtin.git_branches, {})
vim.keymap.set("n", "<leader>sj", ':Telescope harpoon marks<CR>')
