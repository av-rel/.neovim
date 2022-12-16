local ok, _ = pcall(require, 'lualine')

if not ok then
    vim.notify_once('lualine not installed')
    return {}
end

local theme = 'auto'

local ok_theme, _ = pcall(require, 'vscode')
if ok_theme then
    theme = "vscode"
end

local opts = {
    options = {
        icons_enabled = true,
        theme = theme,
        ignore_focus = {},
        globalstatus = false,
        refresh = {
            statusline = 300,
            tabline = 300,
            winbar = 300,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

_.setup(opts)

return opts
