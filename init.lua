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

-- Telescop
local trouble = require("trouble.providers.telescope")
require('telescope').setup {
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
    defaults = {
        wrap_results = true,
        mappings = {
            i = { ["<c-t>"] = trouble.open_with_trouble },
            n = { ["<c-t>"] = trouble.open_with_trouble },
        },
    }
}
-- barbar
vim.g.barbar_auto_setup = false

require 'barbar'.setup {
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

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find file" })
-- vim.keymap.set('n', '<leader>fs', telescope.extensions.possession.list, { desc = "list session" })
vim.keymap.set('n', '<leader>fc', telescope.extensions.live_grep_args.live_grep_args,
    { noremap = true, desc = "search content" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "find buf" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "find help tags" })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "open diagnostics" })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {desc = "show keymaps"})
vim.keymap.set('n', '<leader>p', builtin.commands, {desc = "show commands"})
vim.keymap.set('n', '<leader>hp', builtin.command_history, {desc = "show commands"})
vim.keymap.set('n', "==", "<Cmd>Format<CR>", {});
-- Nvim-Tree
local nvim_tree_api = require("nvim-tree.api")
vim.keymap.set('n', '<leader>t', nvim_tree_api.tree.toggle, {})
