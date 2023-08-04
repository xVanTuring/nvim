local function restore_nvim_tree()
    local nvim_tree = require('nvim-tree.api')
    nvim_tree.tree.change_root(vim.fn.getcwd())
    nvim_tree.tree.reload()
end
local function pre_save_session()
    vim.api.nvim_exec_autocmds('User', { pattern = 'SessionSavePre' })
end
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions,globals"
require('auto-session').setup {
    pre_save_cmds = { pre_save_session, "NvimTreeClose" }, -- "NvimTreeClose"
    post_restore_cmds = { "NvimTreeOpen" },                --"NvimTreeOpen"
    log_level = "error",
    auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
}
