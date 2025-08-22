-- center cursor while navigating
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

-- keeps searching results in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yanking in system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- pasting from system clipboard
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")

-- deleting in void reg
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>tq", ":tabclose<CR>")

-- buffers
vim.keymap.set("n", "<C-n>", ":bnext<CR>")
vim.keymap.set("n", "<C-p>", ":bprev<CR>")
vim.keymap.set("n", "<leader>q", ":bwipeout<CR>")

-- quickfix list
vim.keymap.set("n", "<leader>co", ":copen<CR><C-w>k")
vim.keymap.set("n", "<leader>cc", ":ccl<CR>")

-- exit terminal mode
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- panes
vim.keymap.set("n", "<C-w>>", "<C-w>3>")
vim.keymap.set("n", "<C-w><", "<C-w>3<")
