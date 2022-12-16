local ok, _ = pcall(require, "which-key")

if not ok then
    vim.notify_once("which-key not installed")
    return {}
end

_.setup({})

return {}
