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




require('nvim-tree').setup()
local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'light'

    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
require('vscode').load()

require('lualine').setup({
    options = {
        theme = 'vscode',
    },
})
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
  defaults = { 
  }
}
-- barbar
vim.g.barbar_auto_setup = false

require'barbar'.setup{
    animation = false,
    sidebar_filetypes = {
        NvimTree = true,
    }
}


-- Keymappers
vim.g.mapleader = ' '
-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

