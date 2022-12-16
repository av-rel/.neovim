local ok, plenary = pcall(require, "plenary")

if not ok then
    vim.notify_once("plenary not installed")
    return {}
end

return {}
