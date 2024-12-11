require('telescope').setup{
  defaults = {
    -- Enable search history
    history = {
      path = vim.fn.stdpath('data') .. '/telescope_history',  -- Path to store history
      limit = 1000,  -- Limit the number of saved search entries
    },
    mappings = {
      i = {
        -- Custom keybindings for interacting with search history
        ["<C-n>"] = require('telescope.actions').cycle_history_next,  -- Next search in history
        ["<C-p>"] = require('telescope.actions').cycle_history_prev,  -- Previous search in history
        ["t"] = require('telescope.actions').select_tab,
      },
     n = {
        ["t"] = require('telescope.actions').select_tab,
     }
    },
  },
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

local history = {}
vim.keymap.set('n', '<leader>ps', function()
    vim.ui.input({ prompt = "Grep > " }, function(input)
        if input and input ~= "" then
            table.insert(history, 1, input) -- Add input to history
            builtin.grep_string({ search = input })
        end
    end)
end)
-- Keymap for showing search history
vim.keymap.set('n', '<leader>ph', function()
    require('telescope.pickers')
        .new({}, {
            prompt_title = "Search History",
            finder = require('telescope.finders').new_table({
                results = history
            }),
            sorter = require('telescope.config').values.generic_sorter({}),
            attach_mappings = function(prompt_bufnr, map)
                local actions = require('telescope.actions')
                local action_state = require('telescope.actions.state')

                -- When Enter is pressed, call `builtin.grep_string` with the selected history entry
                map('i', '<CR>', function()
                    local entry = action_state.get_selected_entry(prompt_bufnr)
                    actions.close(prompt_bufnr)
                    if entry then
                        builtin.grep_string({ search = entry[1] })
                    end
                end)

                -- For normal mode, also allow the Enter key to work
                map('n', '<CR>', function()
                    local entry = action_state.get_selected_entry(prompt_bufnr)
                    actions.close(prompt_bufnr)
                    if entry then
                        builtin.grep_string({ search = entry[1] })
                    end
                end)

                return true
            end
        })
        :find()
end)
