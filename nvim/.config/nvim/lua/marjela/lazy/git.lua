return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                -- keymaps
                on_attach = function(bufnr)
                    local gitsigns = require('gitsigns')

                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                    end

                    -- show changes
                    map('n', '<leader>gp', gitsigns.preview_hunk)
                    -- list hunks in cur buff
                    map('n', '<leader>gl', gitsigns.setqflist)

                    -- reseting
                    map('n', '<leader>gr', gitsigns.reset_hunk)
                    map('v', '<leader>gr', function()
                        gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
                    end)
                end
            })
        end
    },
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gb", function()
                vim.cmd("G blame")
            end)
        end
    }
}
