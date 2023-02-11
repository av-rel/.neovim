local ok, img = pcall(require, "image_preview");

if not ok then
    return
end

img.setup({})
