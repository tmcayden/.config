vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = ""

vim.opt.scrolloff = 10

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
-- Create a group for the autocommands
vim.api.nvim_create_augroup("FileTypeIndentation", { clear = true })

-- Python: shiftwidth=4, tabstop=4, softtabstop=4
vim.api.nvim_create_autocmd("FileType", {
    group = "FileTypeIndentation",
    pattern = "python",
    callback = function()
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
    end,
})

-- JavaScript, HTML, CSS: shiftwidth=2, tabstop=2, softtabstop=2
vim.api.nvim_create_autocmd("FileType", {
    group = "FileTypeIndentation",
    pattern = { "javascript", "html", "css" },
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
    end,
})

-- Lua: shiftwidth=2, tabstop=2, softtabstop=2
vim.api.nvim_create_autocmd("FileType", {
    group = "FileTypeIndentation",
    pattern = "lua",
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
    end,
})

-- C# files (.cs): shiftwidth=4, tabstop=4, softtabstop=4
vim.api.nvim_create_autocmd("FileType", {
    group = "FileTypeIndentation",
    pattern = "cs", -- File type for C#
    callback = function()
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
    end,
})

-- Razor files (.cshtml): shiftwidth=2, tabstop=2, softtabstop=2
vim.api.nvim_create_autocmd("FileType", {
    group = "FileTypeIndentation",
    pattern = "cshtml", -- File type for Razor
    callback = function()
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
    end,
})

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
