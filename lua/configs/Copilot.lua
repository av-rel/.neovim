local ok, copilot = pcall(require, 'copilot')

if not ok then
    vim.notify_once('copilot not installed')
    return {}
end

vim.g.copilot_autostart = 1
vim.g.copilot_opacity = 0.55

return {}
