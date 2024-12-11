-- Keybinding to go to the previous breadcrumb
vim.api.nvim_set_keymap('n', '<C-k>', ':lua require"barbecue.ui".prev()<CR>', { noremap = true, silent = true })

-- Keybinding to go to the next breadcrumb
vim.api.nvim_set_keymap('n', '<C-j>', ':lua require"barbecue.ui".next()<CR>', { noremap = true, silent = true })
