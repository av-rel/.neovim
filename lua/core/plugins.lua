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

  use 'wbthomason/packer.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('plugins.nvimtree')
    end
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('plugins.telescope')
    end
  }

  use { 'github/copilot',
    config = function()
      require('plugins.copilot')
    end
  }

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      local saga = require("lspsaga")
      saga.init_lsp_saga()
    end,
  })

  if packer_bootstrap then
    require('packer').sync()
  end
end)
