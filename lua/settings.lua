local g     = vim.g
local cmd   = vim.cmd
local opt   = vim.opt

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
