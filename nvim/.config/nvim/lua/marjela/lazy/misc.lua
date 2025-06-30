return {
    { -- highlights hex colors in buffer
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end
    },
    {
        "jinh0/eyeliner.nvim",
        config = function()
            require("eyeliner").setup({
                highlight_on_key = true,
                dim = true
            })

            vim.api.nvim_set_hl(0, 'EyelinerPrimary', { fg='#ffffff', bold = true, underline = true })
            vim.api.nvim_set_hl(0, 'EyelinerSecondary', { fg='#999999', underline = true })
        end
    },
    { -- automatically makes pairs for (,{,[,",",` etc.More actions
        "echasnovski/mini.pairs",
        version = false,
        config = function()
            require("mini.pairs").setup()
        end
    },
    {
        "tpope/vim-surround"
    },
    {
        "tpope/vim-repeat"
    },
    { -- auto commenting
        "tpope/vim-commentary"
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && npm install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
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
    },
    { -- colon commands autocomplete
        "gelguy/wilder.nvim",
        dependencies = {
            "roxma/nvim-yarp",
            "roxma/vim-hug-neovim-rpc"
        },
        config = function()
            local wilder = require("wilder")
            wilder.setup({
                modes = {
                    ":"
                },
                next_key = "<tab>",
                previous_key = "<C-q>",
                accept_key = "<C-y>"
            })

            wilder.set_option("pipeline", {
                wilder.branch(
                    wilder.cmdline_pipeline(),
                    wilder.python_search_pipeline(),

                    wilder.cmdline_pipeline({
                        fuzzy = 1,
                        set_pcre2_pattern = 1,
                    }),
                    wilder.python_search_pipeline({
                        pattern = "fuzzy",
                    })
                ),
            })
        end
    }
}
