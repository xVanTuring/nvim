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
require('telescope').setup{}
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

-- Possession
require('possession').setup {

}
require('telescope').load_extension('possession')

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

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})
