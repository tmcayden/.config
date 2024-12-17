-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use "sainnhe/gruvbox-material"
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup({
                -- Your configuration options go here
                -- For example:
                plugins = {
                    marks = true,         -- shows a list of your marks on ' and `
                    registers = true,     -- shows your registers on " in NORMAL or <C-r> in INSERT mode
                    spelling = {
                        enabled = true,   -- enabling this will show WhichKey when pressing z= to select spelling suggestions
                        suggestions = 20, -- how many suggestions should be shown in the list?
                    },
                }
            })
        end
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('ThePrimeagen/vim-be-good')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'neovim/nvim-lspconfig',
        requires = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
    }
    use({ 'hrsh7th/nvim-cmp' })
    use({ 'williamboman/mason.nvim' })
    use({ 'williamboman/mason-lspconfig.nvim' })
    use({ 'hrsh7th/cmp-nvim-lsp' })
    use {
        'smoka7/hop.nvim',
        tag = '*', -- optional but strongly recommended
    }
    use {
        "royanirudd/clipboard-history.nvim",
        config = function()
            require("clipboard-history").setup({
                max_history = 30,            -- Maximum number of items to store in the clipboard history
                enable_wsl_features = false, -- Set to true if you're using WSL and want Windows clipboard integration
            })
        end
    }
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        after = "nvim-web-devicons",
        config = function()
            require("barbecue").setup()
        end,
    })
    use 'HiPhish/rainbow-delimiters.nvim'
    use 'j-hui/fidget.nvim'
    use {
        'rmagatti/goto-preview',
        config = function()
            require('goto-preview').setup {}
        end
    }
    use 'voldikss/vim-floaterm'
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
    use {
        'github/copilot.vim',
        config = function()
            vim.g.copilot_no_tab_map = true -- Disable default <Tab> behavior
            vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
        end
    }
    use {
        'windwp/nvim-ts-autotag',
        requires = 'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-ts-autotag').setup()
        end
    }
end)
