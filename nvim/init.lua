vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

vim.cmd.colorscheme("cyberdream")
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set list")
vim.opt.listchars = {
	eol = "¬",
	tab = "  ▸",
	trail = "·",
}
