local ok, code = pcall(require, 'vscode')

if not ok then
  return
end

local c = require('vscode.colors')
code.setup({
    transparent = false,
    italic_comments = true,
    disable_nvimtree_bg = true,
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },
    group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
