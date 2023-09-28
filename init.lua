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

-- Telescope
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

require("ibl-config")
require('mason-config')
require('cmp-config')
require('lua-line-config')
require('auto-session-config')
require("barbar-config")
require("breadcrumb").init()
require("keymaps")
