local ok, statusline = pcall(require, 'statusline')

if not ok then
    vim.notify_once('statusline not installed')
    return {}
end

statusline.lsp_diagnostics = true
statusline.ale_diagnostics = true

return {}