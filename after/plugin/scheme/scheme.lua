vim.opt.background = "dark"

local ok, theme = pcall(require, "nordic")
if not ok then
    return 
end

theme.load({})

--
-- local ok, ct = pcall(require, "catppuccin")
-- if ok then
    -- vim.cmd.colorscheme = "catppuccin"
-- end
--

-- local ok, vs = pcall(require, "vscode")
--if ok then vs.load() end
