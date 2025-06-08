vim.g.oil_permissions = true

return {
    "stevearc/oil.nvim",
    opts = {},
    lazy = false,
    config = function()
        require("oil").setup({
            columns = {
                { "permissions" },
                { "size" }
            },
            keymaps = {
                ["<C-h>"] = false,
                ["<C-l>"] = false,
                ["gp"] = function()
                    if vim.g.oil_permissions then
                        require("oil").set_columns({})
                    else
                        require("oil").set_columns({ "permissions", "size" })
                    end
                    vim.g.oil_permissions = not vim.g.oil_permissions
                end
            },
            skip_confirm_for_simple_edits = true
        })

        vim.keymap.set("n", "-", function()
            require("oil").open()
        end)
        vim.keymap.set("n", "_", function()
            require("oil.actions").open_cwd.callback()
        end)
    end
}
