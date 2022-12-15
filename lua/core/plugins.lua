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

  use { 'github/copilot.vim', config = function()
    require("configs.Copilot")
    return {}
  end
  }

  use { 'Mofiqul/vscode.nvim', config = function()
    require("configs.Vscode")
    return {}
  end
  }

  use {
    'beauwilliams/statusline.lua',
    config = function()
      require("configs.Statusline")
      return {}
    end
  }

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require("configs.NvimLspConfig")
      return {}
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require("configs.NvimTreesitter")
      return {}
    end
  }

  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require("configs.NvimTree")
      return {}
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require("configs.NvimAutoPairs")
      return {}
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end

end)
