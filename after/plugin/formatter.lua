require("formatter").setup({
  logging = false,
  filetype = {
    vue = {
      function()
        return {
          exe = "prettierd", -- Use "prettier" if "prettierd" is not installed
          args = { vim.api.nvim_buf_get_name(0) },
          stdin = true,
        }
      end,
    },
    javascript = {
      function()
        return {
          exe = "prettierd", -- Use "prettier" if "prettierd" is not installed
          args = { vim.api.nvim_buf_get_name(0) },
          stdin = true,
        }
      end,
    },
    typescript = {
      function()
        return {
          exe = "prettierd",
          args = { vim.api.nvim_buf_get_name(0) },
          stdin = true,
        }
      end,
    },
    json = {
      function()
        return {
          exe = "prettierd",
          args = { vim.api.nvim_buf_get_name(0) },
          stdin = true,
        }
      end,
    },
  },
})


vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.vue", "*.js", "*.ts", "*.json" },
  command = "FormatWrite",
})
