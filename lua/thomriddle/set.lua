vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = ""

vim.opt.scrolloff = 10

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("$LOCALAPPDATA") .. "\\nvim\\.vim\\undo"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.g.mapleader = " "

vim.opt.fillchars:append({ eob = " " })  -- Optional: prevents extra spaces at the end
vim.opt.fileformat = "unix"  -- Set your preferred file format
vim.opt.endofline = false   -- Disable automatic new line at end
