local ok, tree = pcall(require, "nvim-tree")
if not ok then return end

tree.setup({
  sort_by = "name",
  disable_netrw = false,
  hijack_netrw = true,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = { "node_modules/", ".git/" },
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    custom = { 'node_modules', ".git", ".*cache", "*cache" },
  },
})

local set = vim.keymap.set

local opts = { noremap = true, silent = true }

set("n", "<leader>f", ":NvimTreeFocus<CR>", opts)
set("n", "<leader>n", ":NvimTreeToggle<CR>", opts)
