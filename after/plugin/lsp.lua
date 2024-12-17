-- Reserve a space in the gutter
-- This will avoid an annoying layout shift in the screen
vim.opt.signcolumn = 'yes'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', function () vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', 'gd', function () vim.lsp.buf.definition() end, opts)
    --vim.keymap.set('n', '<C-h>', function () vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', '<leader>vws', function () vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set('n', '<leader>vd', function () vim.lsp.buf.open_float() end, opts)
    vim.keymap.set('n', '[d', function () vim.lsp.buf.goto_next() end, opts)
    vim.keymap.set('n', ']d', function () vim.lsp.buf.goto_prev() end, opts)
    vim.keymap.set('n', '<leader>vrn', function () vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<leader>vca', function () vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
  end,
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
    },
    mapping = cmp.mapping.preset.insert({
        -- Navigate between completion items
        ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
        ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),

        -- `Enter` key to confirm completion
        ['<C-y>'] = cmp.mapping.confirm({select = true}),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

    }),
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
})

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'volar' }, -- Ensure Volar is installed
})

local lspconfig = require('lspconfig')

lspconfig.volar.setup({
    filetypes = { 'vue', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
})

