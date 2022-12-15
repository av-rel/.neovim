local color = require('vscode.colors')
require("vscode").setup({
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