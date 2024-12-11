vim.g.floaterm_shell = 'powershell.exe'
-- Create terminal 1 if it doesn't exist and toggle it
vim.api.nvim_set_keymap('n', '<leader>th', ':FloatermToggle one<CR>', { noremap = true, silent = true })
-- Create terminal 2 if it doesn't exist and toggle it
vim.api.nvim_set_keymap('n', '<leader>tj', ':FloatermToggle two<CR>', { noremap = true, silent = true })
-- Create terminal 3 if it doesn't exist and toggle it
vim.api.nvim_set_keymap('n', '<leader>tk', ':FloatermToggle three<CR>', { noremap = true, silent = true })
-- Create terminal 4 if it doesn't exist and toggle it
vim.api.nvim_set_keymap('n', '<leader>tl', ':FloatermToggle four<CR>', { noremap = true, silent = true })
-- Exit terminal mode and close the terminal window (hide it)
vim.api.nvim_set_keymap('t', '<C-w>q', '<C-\\><C-n>:FloatermHide<CR>', { noremap = true, silent = true })

