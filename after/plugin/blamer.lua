local ok, blamer = pcall(require, 'blamer')

if not ok then
	return 
end

vim.cmd(":BlamerShow")
