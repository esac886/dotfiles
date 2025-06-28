return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "gopls",
                    "bashls",
                },
                automatic_installation = true,
            })
        end
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local servers = {
                -- TODO fucking clangd is horrible. i should try something else
                clangd = {},
                gopls = {},
                bashls = {},
            }

            for name, opts in pairs(servers) do
                opts.capabilities = capabilities,
                lspconfig[name].setup({ opts })
            end

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if not client then return end

                    if client.supports_method("textDocument/formatting", { bufnr = 0 }) then
                        -- format buf on save
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({
                                    bufnr = args.buf,
                                    id = client.id,
                                    formatting_options = {
                                        tabSize = 4,
                                        insertSpaces = true
                                    }
                                })
                            end
                        })
                    end

                    local opts = { buffer = args.buf }
                    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)

                    vim.keymap.set("n", "<leader>do", function() vim.diagnostic.open_float() end, opts)
                    vim.keymap.set("n", "<leader>dl", function() vim.diagnostic.setqflist() end, opts)
                    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
                    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
                end
            })
        end
    }
}
