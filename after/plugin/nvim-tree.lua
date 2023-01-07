local ok, tree = pcall(require, "nvim-tree")

if not ok then
  return
end

tree.setup({
  sort_by = "name",
  disable_netrw = false,
  hijack_netrw = true,
  open_on_setup = true,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = { "node_modules", ".git", ".cache", "target" },
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "i", action = "dir_down" },
        { key = "r", action = "refresh" },
        { key = "a", action = "create" },
        { key = "d", action = "remove" },
        { key = "r", action = "rename" },
        { key = "<C-r>", action = "full_rename" },
        { key = "x", action = "cut" },
        { key = "c", action = "copy" },
        { key = "p", action = "paste" },
        { key = "y", action = "copy_name" },
        { key = "Y", action = "copy_path" },
        { key = "gy", action = "copy_absolute_path" },
        { key = "q", action = "close" },
        { key = "g?", action = "toggle_help" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    -- dotfiles = true,
  },
})
local set = vim.keymap.set

local opts = { noremap = true, silent = true }
set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
set("n", "<leader>f", ":NvimTreeFocus<CR>", opts)
