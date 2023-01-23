vim.cmd [[highlight IndentBlanklineChar guifg=#2A2A37 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#363646 gui=nocombine]]

require("indent_blankline").setup {
    show_current_context = true,
}
