return function(use)
    use "catppuccin/nvim"
    use "kyazdani42/nvim-web-devicons"
    use { "windwp/nvim-autopairs",
       	config = function() 
            local ok, pairs = pcall(require, "nvim-autopairs") 
            if ok then pairs.setup {} end
        end
    }
    use "terrortylor/nvim-comment"
    use { "nvim-tree/nvim-tree.lua" , branch = "disable-view-mappings" }
    use "christoomey/vim-tmux-navigator"
    use "romgrk/barbar.nvim"

    use "TimUntersberger/neogit"
    use "sindrets/diffview.nvim"
    use { "APZelos/blamer.nvim",
        config = function() 
            local ok, blamer = pcall(require, "blamer")
            if ok then blamer.setup {} end
        end
    }
    use "samodostal/image.nvim"
end

