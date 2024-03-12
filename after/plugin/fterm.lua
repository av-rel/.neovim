local ok, fterm = pcall(require, 'FTerm')
if not ok then return end

local dims = {
    height = 0.9,
    width = 0.9
}

fterm.setup({
    border = 'single',
    ft = "fterm",
    dimensions  = dims,
})

vim.keymap.set({'n', 'v'}, '<C-a>' , require('FTerm').open, { silent = true })
vim.keymap.set({'n', 'v'}, '<A-t>' , require('FTerm').toggle, { silent = true })
vim.keymap.set({'n', 'v'}, '<C-q>', require('FTerm').close, { silent = true })
vim.keymap.set({'n', 'v'}, '<C-A-C>', require('FTerm').exit, { silent = true })

vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, { bang = true })
vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true })
vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, { bang = true })
vim.api.nvim_create_user_command('FTermExit', require('FTerm').exit, { bang = true })

--set
local gitui = fterm:new({
    ft = 'fterm_gitui', -- You can also override the default filetype, if you want
    cmd = "gitui",
    dimensions = dims,
})

-- Use this to toggle gitui in a floating terminal
vim.keymap.set('n', '<A-g>', function()
    gitui:toggle()
end)
