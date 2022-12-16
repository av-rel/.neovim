local ok, _ = pcall(require, 'nvim-web-devicons')

if not ok then
    vim.notify_once('nvim-web-devicons not installed')
    return {}
end

local opts = {
    color_icons = true;
    default = true;
}

_.setup(opts)

return opts
