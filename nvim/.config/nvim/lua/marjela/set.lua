vim.g.mapleader = " "
vim.cmd("colorscheme habamax")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0
vim.opt.expandtab = true
vim.opt.smartindent = true
-- better switch indentation
vim.opt.cinoptions = ':0'

vim.opt.guicursor = ""
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.autoread = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.wrap = true
vim.opt.nrformats = "bin,hex,alpha"
vim.opt.langmap =
"ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- for pretty panes separator (at least in my colorscheme)
vim.cmd("highlight WinSeparator ctermbg=0")

-- disable autofolding when entering the buffer
vim.o.foldlevelstart = 99
