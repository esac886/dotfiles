return {
    { -- highlights hex colors in buffer
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end
    },
    {
        "tpope/vim-surround"
    },
    {
        "tpope/vim-repeat"
    },
    {
        "chrishrb/gx.nvim",
        keys = { { "gx", "<cmd>Browse<cr>", mode = { "n", "x" } } },
        cmd = { "Browse" },
        init = function()
            vim.g.netrw_nogx = 1 -- disable netrw gx
        end,
        config = function()
            require("gx").setup({
                handlers = {
                    github = false,
                    brewfile = false,
                    package_json = false,
                    jira = false,
                    rust = false
                },
                handler_options = {
                    search_engine = "https://search.brave.com/search?q="
                }
            })
        end
    }
}
