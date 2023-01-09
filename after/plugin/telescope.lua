local ok, telescope = pcall(require, "telescope")

if not ok then
    return
end

local builtin = require('telescope.builtin')
local set = vim.keymap.set

set('n', '<leader>ff', builtin.find_files, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.current_buffer_fuzzy_find, {})

telescope.setup({})
