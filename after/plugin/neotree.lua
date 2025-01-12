-- Function to toggle Neotree based on its current state
local function toggle_neotree()
  -- Check if any window is showing Neo-tree
  local neotree_open = false
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    local bufname = vim.api.nvim_buf_get_name(buf)
    if bufname:match("neo%-tree filesystem") then
      neotree_open = true
      break
    end
  end

  if neotree_open then
    -- Close Neo-tree if it's open
    vim.cmd("Neotree close")
  else
    -- Reveal Neo-tree if it's closed
    vim.cmd("Neotree reveal")
  end
end

-- Keybind to toggle Neotree
vim.keymap.set("n", "<leader>pv", toggle_neotree, { noremap = true, silent = true })

