return {
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "mireq/luasnip-snippets"
        },
        build = "make install_jsregexp",
        config = function()
            dofile(os.getenv("HOME") .. "/.config/nvim/lua/marjela/snippets.lua")
            local ls = require("luasnip")
            vim.keymap.set("i", "<C-e>", function() ls.expand_or_jump(1) end, { silent = true })
            vim.keymap.set("i", "<C-j>", function() ls.jump(1) end, { silent = true })
            vim.keymap.set("i", "<C-k>", function() ls.jump(-1) end, { silent = true })
        end
    }
}
