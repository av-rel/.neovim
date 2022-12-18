require('core.settings')
require("core.options")

if vim.g.vscode == nil then
    require('core.plugins')
end