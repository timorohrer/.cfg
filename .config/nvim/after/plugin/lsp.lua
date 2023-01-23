local lsp = require('lsp-zero')
local null_ls = require("null-ls")
local mason_nullls = require("mason-null-ls")

lsp.preset('recommended')

lsp.ensure_installed({
    'volar',
    'tailwindcss'
})

lsp.configure("tsserver", {
    on_init = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentFormattingRangeProvider = false
    end
})

lsp.configure("volar", {
    on_init = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentFormattingRangeProvider = false
    end
})

lsp.setup()

mason_nullls.setup({
    automatic_installation = true,
    automatic_setup = true,
})

null_ls.setup({})

mason_nullls.setup_handlers({})

vim.keymap.set("n", "<leader>f", vim.cmd.LspZeroFormat)
