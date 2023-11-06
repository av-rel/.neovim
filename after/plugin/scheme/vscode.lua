local ok, vs = pcall(require, "vscode")

if not ok then return end

local c = require('vscode.colors').get_colors()

vs.setup {
    transparent = false,
    italic_comments = true,
    disable_nvimtree_bg = true,
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },
    group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
}
