vim.o.background = 'dark'
-- vim.o.mouse = ''
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.number = true
vim.o.shiftwidth = 4
--  disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.termguicolors = true

require('plugins')

require('nvim-tree-config')
require('vscode-colors-config')
require('gitsigns-config')
require("dap-cs")
require("dapui-config")
require("dap-config")

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
-- Git Blamer
vim.g.blamer_enabled = 1
vim.g.blamer_prefix = ' > '

-- Telescope
require('telescope').setup{
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
}
-- barbar
vim.g.barbar_auto_setup = false

 require'barbar'.setup{
    animation = false,
    sidebar_filetypes = {
        NvimTree = true,
    }
}

require('mason-config')
require('cmp-config')
require('lua-line-config')
require('auto-session-config')
require("breadcrumb").init()


-- Keymappers
vim.g.mapleader = ' '
-- Telescope
local builtin = require('telescope.builtin')
local telescope = require('telescope')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', telescope.extensions.possession.list, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Nvim-Tree
local nvim_tree_api = require("nvim-tree.api")
vim.keymap.set('n', '<leader>t', nvim_tree_api.tree.toggle, {})


