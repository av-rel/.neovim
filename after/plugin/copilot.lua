local ok, copilot = pcall(require, "copilot")

if not ok then
    return
end

vim.g.copilot_autostart = 1
vim.g.copilot_opacity = 0.75

copilot.setup()
