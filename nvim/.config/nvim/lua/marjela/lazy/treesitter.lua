return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-context"
        },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "c", "lua", "go", "comment", "bash", "sql", "markdown", "markdown_inline"
                },
                sync_install = false,
                auto_install = true,
                indent = {
                    enable = false
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                }
            })
        end
    },
}
