local function require_all(list)
    for _, file in ipairs(list) do
        local ok, _ = pcall(require, file)
        if not ok then
            vim.notify_once(file .. " not installed")
            return
        end
        require(file)
    end
end

local files = {
    "Impatient",
    "NvimAutoPairs",
    "Popup",
    "Plenary",
    "Lualine",
    "NvimTree",
    "NvimWebDevIcons",
    "Telescope",
    "Vscode",
    "TreeSitter",
    "WhichKey",
    "Copilot",
}

require_all(files)
