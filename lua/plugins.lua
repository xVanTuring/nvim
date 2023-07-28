-- local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

return require("packer").startup(
    function()
	use "wbthomason/packer.nvim"
	use "Mofiqul/vscode.nvim"
	use "nvim-tree/nvim-tree.lua"
	use "nvim-tree/nvim-web-devicons"
	use "nvim-lualine/lualine.nvim"
	use "lukas-reineke/indent-blankline.nvim"
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- project = { enable = true, limit = 8, },
                -- config
            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }
    use "APZelos/blamer.nvim"
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'neovim/nvim-lspconfig'
--    use 'simrat39/rust-tools.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

--    use {'neoclide/coc.nvim', branch = 'release'}
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'
    -- use 'airblade/vim-gitgutter'
    end
)

