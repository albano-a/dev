return {{
    "williamboman/mason.nvim",
    config = true
}, {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {"pyright", "rust_analyzer", "ts_ls", "clangd", "lua_ls", "gopls", "html", "cssls",
                                "bashls"}

        })
    end,
    dependencies = {"williamboman/mason.nvim"}
}, {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        local servers = {"pyright", "rust_analyzer", "ts_ls", "clangd", "lua_ls", "gopls", "html", "cssls", "bashls"}
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup({
                capabilities = capabilities
            })
        end
    end
}}
