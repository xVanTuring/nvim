-- local function session_name()
-- return require('possession.session').session_name or ''
-- end
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
require('lualine').setup({
    options = {
        theme = 'vscode',
        -- disabled_filetypes = { 'packer', 'NvimTree', 'Trouble' },
    },
    sections = { lualine_c = { require('auto-session.lib').current_session_name } },
    extensions = { "trouble", "nvim-tree", "nvim-dap-ui" }
})
