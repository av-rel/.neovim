local ok, comment = pcall(require, "nvim_comment")
--if not ok then return end

local opts = {
    marker_padding = true,
    comment_empty = true,
    comment_empty_trim_whitespace = true,
    create_mappings = true,
}

comment.setup(opts)

vim.keymap.set("n", "<C-w>", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.keymap.set("v", "<C-w>", ":CommentToggle<CR>", {noremap = true, silent = true})
