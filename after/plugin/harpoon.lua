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
set("n", "m[1-9]", function(val) ui.nav_file(val) end, est)

harp.setup(opts);
