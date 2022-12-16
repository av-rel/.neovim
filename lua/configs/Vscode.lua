local ok, vscode = pcall(require, 'vscode')

if not ok then
    vim.notify_once('vscode not installed')
    return {}
end

local color = require('vscode.colors')

vscode.setup({
    transparent = false,
    italic_comments = true,
    disable_nvimtree_bg = false,
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },
    group_overrides = {
        Cursor = { fg = color.vscDarkBlue, bg = color.vscLightGreen, bold = true },
    }
})

return {}