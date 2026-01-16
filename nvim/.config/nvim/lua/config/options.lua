-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.termguicolors = true
vim.cmd("command -nargs=1 VV rightbelow vsplit <args>")
vim.cmd("command -nargs=1 SS rightbelow split <args>")
vim.cmd('command Vterm execute "rightbelow vnew" | terminal')
vim.cmd('command Sterm execute "botright split" | terminal')
