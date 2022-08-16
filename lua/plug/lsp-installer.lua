

require("nvim-lsp-installer").setup({
    automatic_installation = false, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "",
            server_pending = "",
            server_uninstalled = ""
        }
    }
})

