local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer=bufnr})
end)

local mason = require('mason')
local mason_config = require('mason-lspconfig')

mason.setup({})
mason_config.setup({
    handlers = {
        lsp.default_setup,
    },
})

lsp.setup()
