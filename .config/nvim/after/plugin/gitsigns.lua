require('gitsigns').setup({
    current_line_blame_opts = {
        delay = 100,
    },

    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        vim.keymap.set("n", "<leader>hp", gs.preview_hunk)
        vim.keymap.set("n", "<leader>hb", gs.toggle_current_line_blame)
    end
})
