<<<<<<< HEAD
local g     = vim.g
local cmd   = vim.cmd
local opt   = vim.opt
=======
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
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
>>>>>>> master

g.mapleader         = " "
g.termguicolors     = true
g.background        = "dark"
g.netrw_liststyle   = 3

cmd.colorscheme     = "evening"

opt.clipboard       = 'unnamedplus'
opt.completeopt     = {'menu', 'menuone', 'preview', 'noselect', 'noinsert'}
opt.mouse           = 'a'
opt.updatetime      = 250
opt.termguicolors   = true
opt.guicursor       = nil
opt.encoding        = "utf-8"
opt.fileencoding    = "utf-8"

opt.cursorline      = true
opt.number          = true
opt.relativenumber  = true
opt.splitbelow      = true
opt.splitright      = true
opt.showmode        = true

opt.tabstop         = 4
opt.softtabstop     = 4
opt.shiftwidth      = 4  
opt.expandtab       = true
opt.breakindent     = true
opt.smartindent     = true
opt.autoindent      = true
opt.backspace       = {'indent', 'eol', 'start'}
opt.wrap            = false

opt.incsearch       = true
opt.hlsearch        = false
opt.ignorecase      = true
opt.smartcase       = true
