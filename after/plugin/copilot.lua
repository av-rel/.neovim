local ok, gtp = pcall(require, "copilot.suggestion")

if not ok then
    return
end

gtp.toggle_auto_trigger()
