local comment = require("nvim_comment")

comment.setup({
    marker_padding = true,
    comment_empty_trim_whitespace = false,
    comment_empty = true,
    create_mappings = true,
})

local opts = {noremap = true, silent = true}

vim.keymap.set("n", "<C-a>", ":CommentToggle<CR>", opts)
vim.keymap.set("v", "<C-a>", ":CommentToggle<CR>", opts)
