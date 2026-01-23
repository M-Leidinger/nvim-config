vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
require("config.lazy")
require("lazy").setup("plugins")
require("config.keybindings")

