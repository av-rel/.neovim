--vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
local map = vim.api.nvim_set_keymap


-- plugin mappings --

--emmet
vim.g.user_emmet_leader_key = ','
vim.g.user_emmet_mode = 'i'
vim.g.user_emmet_install_global = 1

--nvim-tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>f', ':NvimTreeFocus<CR>', {noremap = true, silent = true})

--nvim-comment
map('n', '<C-/>', ':CommentToggle<CR>', {noremap = true, silent = true})
