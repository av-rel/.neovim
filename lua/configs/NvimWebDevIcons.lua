local ok, icons = pcall(require, 'nvim-web-devicons')

if not ok then
    vim.notify_once('nvim-web-devicons not installed')
    return {}
end

icons.setup {
    color_icons = true;
    default = true;
}

return {}