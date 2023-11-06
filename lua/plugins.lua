return function(use)
    use "catppuccin/nvim"
    use 'Mofiqul/vscode.nvim'

    use "kyazdani42/nvim-web-devicons"
    use { "windwp/nvim-autopairs",
       	config = function() 
            local ok, pairs = pcall(require, "nvim-autopairs") 
            if ok then pairs.setup {} end
        end
    }
    use "terrortylor/nvim-comment"
    use { "nvim-tree/nvim-tree.lua" }
    use "christoomey/vim-tmux-navigator"
    use "romgrk/barbar.nvim"

    use {"NeogitOrg/neogit", config = true }
    use "sindrets/diffview.nvim"
    use { "APZelos/blamer.nvim",
        config = function() 
            local ok, blamer = pcall(require, "blamer")
            if ok then blamer.setup {} end
        end
    }
end

