local ok, line = pcall(require, "lualine")
local ok_tokyo, _ = pcall(require, "tokyonight")

if not ok or not ok_tokyo then
    return
end

line.setup({
    options = {
        theme = "tokyonight",
    },
})
