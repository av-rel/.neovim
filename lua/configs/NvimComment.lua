local ok, nvim_comment = pcall(require, 'nvim_comment')

if not ok then
    vim.notify_once('nvim_comment not installed')
    return {}
end

opts = {
    marker_padding = true,
    comment_empty = false,
    create_mappings = true,
    line_mapping = "gcc",
    operator_mapping = "gc",
    hook = nil,
 }

nvim_comment.setup(opts)

return opts
