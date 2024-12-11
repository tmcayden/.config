local hop = require('hop')
hop.setup { keys = 'etovxqpdygfblzhckisuran' }

vim.keymap.set("n", "<C-a>", function () hop.hint_words() end, { remap = true })
vim.keymap.set("n", "<C-s>", function () hop.hint_char2() end, { remap = true })
