vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set mouse=a")
vim.cmd("set autoindent")
vim.cmd("set smarttab")
vim.cmd("set encoding=UTF-8")
vim.cmd("set clipboard=unnamedplus")
vim.opt.spell = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--  - Folding -
-- vim.opt.foldmethod = "syntax"
vim.opt.foldenable = true
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99 -- Start with all folds open
