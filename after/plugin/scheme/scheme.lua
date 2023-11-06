vim.opt.background = "dark"

local ok, vs = pcall(require, "vscode")
if ok then vs.load() end
