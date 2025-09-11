return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "gopls",
                    "lua_ls",
                },
                automatic_installation = true,
                automatic_enable = false -- very important
            })
        end
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")

            local servers = {
                clangd = {},
                gopls = {},
                lua_ls = { settings = { Lua = { diagnostics = { globals = { 'vim' } } } }, },
            }

            for name, opts in pairs(servers) do
                lspconfig[name].setup(opts)
            end

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if not client then return end
                    -- not enable formatting for clangd this formatter is very annoying
                    if client.name ~= "clangd" and client.supports_method("textDocument/formatting", { bufnr = 0 }) then
                        -- format buf on save
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({
                                    bufnr = args.buf,
                                    id = client.id,
                                })
                            end
                        })
                    end

                    local opts = { buffer = args.buf }
                    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
                end
            })
        end
    }
}
