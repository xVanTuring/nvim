-- Keymappers
vim.g.mapleader = ' '
-- Telescope
local builtin = require('telescope.builtin')

local telescope = require('telescope')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find file" })
vim.keymap.set('n', '<leader>fs', telescope.extensions.live_grep_args.live_grep_args,
    { noremap = true, desc = "search content" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "find buf" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "find help tags" })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "open diagnostics" })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {desc = "show keymaps"})
vim.keymap.set('n', '<leader>p', builtin.commands, {desc = "show commands"})
vim.keymap.set('n', '<leader>hp', builtin.command_history, {desc = "show commands"})
vim.keymap.set('n', "==", "<Cmd>Format<CR>", {});
vim.keymap.set('n', "tt", "<Cmd>TroubleToggle<CR>", {});
-- Nvim-Tree
local nvim_tree_api = require("nvim-tree.api")
vim.keymap.set('n', '<leader>t', nvim_tree_api.tree.toggle, {})
