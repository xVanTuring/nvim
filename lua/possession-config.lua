
-- Possession
require('possession').setup {
    commands = {
        save = 'SSave',
        load = 'SLoad',
        delete = 'SDelete',
        list = 'SList',
    }
}
require('telescope').load_extension('possession')
