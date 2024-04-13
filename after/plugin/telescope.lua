local builtin = require('telescope.builtin')
local keymap = vim.keymap

keymap.set('n', '<leader>ss', builtin.find_files, {})
keymap.set('n', '<leader>bb', builtin.buffers, {})
keymap.set('n', '<C-p>', builtin.git_files, {})
