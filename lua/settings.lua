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
vim.o.completeopt = 'menu,menuone,noinsert,noselect,preview'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.smartindent = true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.smarttab=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.autoindent=true
vim.opt.backspace='indent,eol,start'
vim.opt.wrap = true

nmap('n', '<A-Up>',	':m .-2<CR>', {noremap = true, silent = true})
nmap('n', '<A-Down>', ':m .+1<CR>', {noremap = true, silent = true})

vmap('v', '<A-Up>',	":'<,'>m .-2<CR>", {noremap = true, silent = true})
vmap('v', '<A-Down>', ":'<,'>m .+1<CR>", {noremap = true, silent = true})
