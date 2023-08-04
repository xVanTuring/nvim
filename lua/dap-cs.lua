local dap = require('dap')

dap.adapters.coreclr = {
    type = 'executable',
    command = 'C:/Users/USER/AppData/Local/nvim-data/mason/packages/netcoredbg/netcoredbg/netcoredbg',
    args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
    },
}
