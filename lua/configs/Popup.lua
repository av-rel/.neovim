local ok, _ = pcall(require, "popup")

if not ok then
    vim.notify_once("popup not installed")
    return {}
end

return {}