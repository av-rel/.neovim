local ok, _ = pcall(require, "nvim-treesitter")

if not ok then
    vim.notify_once("nvim-treesitter not installed")
    return {}
end

local opts = {
    sync_install = false,
    highlight = {
        enable = true,
    },
    file_ignore_patterns = {
        ".git/",
        "node_modules/",
        "vendor/",
        "target",
        "pkg",
        "mod",
        ".cache",
        "%.o", "%.a", "%.out", "%.exe", "%.so", "%.apk",
        "%.class", "%.dll", "%.so", "%.dylib",
        "%.pdf", "%.mkv", "%.mp4", "%.zip", "%.gz",
        "%.swp", "%.swo", "%.swpx", "%.swm", "%.swn",
        "%.log", "%.aux", "%.toc", "%.fdb_latexmk", "%.synctex.gz",
    },
    additional_vim_regex_highlighting = true,
    rainbow = {
        enable = true,
        extended_mode = true,
    },
    indent = {
        enable = true
    },
}

_.setup(opts)

return opts
