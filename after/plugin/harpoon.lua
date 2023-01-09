local ok, harp = pcall(require, "harpoon")

if not ok then
    return
end

local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

local opts = {
    save_on_toggle = false,
    save_on_change = true,
    enter_on_sendcmd = false,
    tmux_autoclose_windows = false,
    excluded_filetypes = { "harpoon" },
    mark_branch = false,
}


local set = vim.keymap.set
local est = { noremap = true, silent = true }

set("n", "<leader>m", ui.toggle_quick_menu, est)
set("n", "ma", mark.add_file, est)

set("n", "m1", function(val) ui.nav_file(1) end, est)
set("n", "m2", function(val) ui.nav_file(2) end, est)
set("n", "m3", function(val) ui.nav_file(3) end, est)
set("n", "m4", function(val) ui.nav_file(4) end, est)

harp.setup(opts);
