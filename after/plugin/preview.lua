vim.keymap.set('n', "<leader>pd", function() require("goto-preview").goto_preview_definition() end )
vim.keymap.set('n', "<leader>pt", function() require("goto-preview").goto_preview_type_definition() end )  
vim.keymap.set('n', "<leader>pi", function() require("goto-preview").goto_preview_type_definition() end )  
vim.keymap.set('n', "<leader>pr", function() require("goto-preview").goto_preview_references() end )  
vim.keymap.set('n', "<leader>pc", function() require("goto-preview").close_all_win() end)  