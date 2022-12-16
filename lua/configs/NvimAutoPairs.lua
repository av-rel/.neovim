local ok, autopairs = pcall(require, "nvim-autopairs")

if not ok then
    vim.notify_once("nvim-autopairs not installed")
    return {}
end

local options = {
    ignored_next_char = "[%w%.]",
    enable_check_bracket_line = false,
}

autopairs.setup(options)

return {}
