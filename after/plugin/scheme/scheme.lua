vim.opt.background = "dark"

--[
local ok, ct = pcall(require, "catppuccin")
if ok then
    vim.cmd.colorscheme = "catppuccin-latte"
end
--]

local ok, vs = pcall(require, "vscode")
if ok then vs.load() end
