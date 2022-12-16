local ok, nvim_tree = pcall(require, "nvim-tree")

if not ok then
    vim.notify_once("nvim-tree not installed")
    return {}
end

nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    gitignore = true,
    ignore = { ".git", "node_modules", ".cache" },
})

return {}