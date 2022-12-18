local ok, comment = pcall(require, "nvim_comment")

if not ok then
    return
end

local opts = {
    marker_padding = true,
    comment_empty = true,
    comment_empty_trim_whitespace = true,
    create_mappings = true,
    hook = nil
}

vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.keymap.set("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})

comment.setup(opts)
