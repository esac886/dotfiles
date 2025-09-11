vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v", "x" }, "<leader>y", "\"+y")
vim.keymap.set({ "n", "v", "x" }, "<leader>p", "\"+p")
vim.keymap.set({ "n", "v", "x" }, "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>q", ":bwipeout<CR>")

vim.keymap.set("n", "<leader>co", ":copen<CR>")
vim.keymap.set("n", "<leader>cc", ":ccl<CR>")

vim.keymap.set("c", "s/", "s/\\v")
