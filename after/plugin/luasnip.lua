local ok, ls = pcall(require, "luasnip")

if not ok then
    return
end

ls.config.set_config({history = true})
ls.config.set_config({enable_autosnippets = true})
