-- local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

return require("packer").startup(
    function()
        use {
            "wbthomason/packer.nvim",
            "Mofiqul/vscode.nvim",
            "nvim-tree/nvim-tree.lua",
            "nvim-tree/nvim-web-devicons",
            "nvim-lualine/lualine.nvim",
            "lukas-reineke/indent-blankline.nvim",
            'nvim-treesitter/nvim-treesitter',
            'lewis6991/gitsigns.nvim',
            'romgrk/barbar.nvim',
            "loctvl842/breadcrumb.nvim",
            'rmagatti/auto-session',
            'f-person/git-blame.nvim'
        }
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.2',
            requires = {
                { 'nvim-lua/plenary.nvim' },
            }
        }

        use({
            "kdheepak/lazygit.nvim",
            -- optional for floating window border decoration
            requires = {
                "nvim-telescope/telescope.nvim",
                "nvim-lua/plenary.nvim",
            },
            config = function()
                require("telescope").load_extension("lazygit")
            end,
        })
        use {
            'goolord/alpha-nvim',
            requires = { 'nvim-tree/nvim-web-devicons' },
            config = function()
                require 'alpha'.setup(require 'alpha.themes.startify'.config)
            end
        }
        use {
            'jedrzejboczar/possession.nvim',
            requires = { 'nvim-lua/plenary.nvim' },
        }
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "mfussenegger/nvim-dap",
            "jay-babu/mason-nvim-dap.nvim",
            "rcarriga/nvim-dap-ui",
            "nvim-telescope/telescope-dap.nvim",
            "HUAHUAI23/telescope-dapzzzz",
            "folke/trouble.nvim",
            "folke/lsp-colors.nvim"
        }
        use {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            'saadparwaiz1/cmp_luasnip',
            "hrsh7th/cmp-nvim-lsp-signature-help",
        }
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        }
        use({
            "nvim-telescope/telescope-live-grep-args.nvim",
            requires = {
                "nvim-telescope/telescope.nvim",
            },
            config = function()
                require("telescope").load_extension("live_grep_args")
            end,
        })
    end
)
