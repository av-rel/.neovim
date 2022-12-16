local ok, treesitter = pcall(require, "nvim-treesitter")

if not ok then
    vim.notify_once("nvim-treesitter not installed")
    return {}
end

local opts = {
    sync_install = false,
    highlight = {
        enable = true
    },
    additional_vim_regex_highlighting = false,
    rainbow = {
        enable = true,
        extended_mode = true,
    },
    indent = {
        enable = true
    },
}

treesitter.setup(opts)

return {}
