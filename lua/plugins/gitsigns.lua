local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	print("gitsigns failed to load")
	return
end

gitsigns.setup()
