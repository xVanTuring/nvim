-- local function session_name()
-- return require('possession.session').session_name or ''
-- end
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
require('lualine').setup({
    options = {
        theme = 'vscode',
    },
    sections = { lualine_c = { require('auto-session.lib').current_session_name } },
    -- disabled_filetypes = { 'packer', 'NvimTree', 'NvimTree_1' },
    extensions = { 'nvim-tree', 'nvim-dap-ui' },
    -- sections = { lualine_a = { session_name } }
})
