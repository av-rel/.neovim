local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

  use { 'wbthomason/packer.nvim' }

  use { 'nvim-lua/plenary.nvim', config = require("configs.Plenary") }

  use { 'Mofiqul/vscode.nvim', config = require("configs.Vscode") }
  use { 'beauwilliams/statusline.lua', config = require("configs.Statusline") }
  use { 'nvim-lua/telescope.nvim', config = require("configs.Telescope") }
  use { 'nvim-tree/nvim-tree.lua', config = require("configs.NvimTree") }
  use { 'nvim-treesitter/nvim-treesitter', config = require("configs.NvimTreesitter"), run = ":TSUpdate" }
  
  use { 'windwp/nvim-autopairs', config = require("configs.NvimAutoPairs") }
  use { 'nvim-lua/popup.nvim', config = require("configs.Popup") }

  use { 'github/copilot.vim', config = require("configs.Copilot") }

  if packer_bootstrap then
    require('packer').sync()
  end

end)
