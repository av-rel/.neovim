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

  use 'wbthomason/packer.nvim' --Package manager

  use 'lewis6991/impatient.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use 'folke/tokyonight.nvim'
  use { 'Avimitin/nerd-galaxyline', requires = { 'glepnir/galaxyline.nvim' } }

  use 'nvim-tree/nvim-tree.lua'
  use 'ThePrimeagen/harpoon'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' }
  }
  use 'nvim-treesitter/nvim-treesitter'

  use 'github/copilot.vim'
  use 'windwp/nvim-autopairs'
  use 'terrortylor/nvim-comment'
  use 'folke/which-key.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end

end)
