vim.opt.hidden = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.cursorcolumn = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.clipboard = "unnamed"
vim.opt.mouse = "a"
vim.opt.guicursor=nil
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.wo.number = true
vim.o.breakindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 200
vim.opt.hlsearch = false
vim.o.incsearch = true
vim.wo.signcolumn = 'yes'
vim.o.termguicolors = false
vim.o.completeopt = 'menu,menuone,noinsert,noselect,preview'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.smartindent = true
vim.opt.background = "dark"
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.smarttab=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.autoindent=true
vim.opt.backspace='indent,eol,start'
vim.opt.wrap = true

local font_size = 12
vim.opt.guifont="Consolas:h" .. font_size

function _G.increase_font_size()
    font_size = font_size + 1
    vim.o.guifont = "Consolas:h" .. font_size
end

function _G.decrease_font_size()
    font_size = font_size - 1
    vim.o.guifont = "Consolas:h" .. font_size
end

vim.api.nvim_set_keymap('n', '<C-=>', ':lua increase_font_size()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-->', ':lua decrease_font_size()<CR>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<A-Up>',	':m .-2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<A-Up>',	":'<,'>m .-2<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-Down>', ":'<,'>m .+1<CR>", {noremap = true, silent = true})
