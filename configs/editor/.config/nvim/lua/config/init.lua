local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local s = vim.s
local indent = 4

cmd([[
	filetype plugin indent on
]])

opt.backspace = {"eol", "start", "indent"} -- allow backspacing over everything in insert mode
opt.clipboard = "unnamedplus" -- allow neovim to access system clipboard
-- Always utf-8
opt.fileencoding = "utf-8"
opt.encoding = "utf-8"

-- indention
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = indent
opt.smartindent = true
opt.softtabstop = indent
opt.tabstop = indent
opt.shiftround = true

-- search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.wildignore = opt.wildignore + {"*/node_modules/*", "*/.git/*", "*/vendor/*"}
opt.wildmenu = true

-- ui
opt.cursorline = true
opt.laststatus = 2

-- Hide cmd line
opt.cmdheight = 0 -- more space in the neovim command line for dispalying messages

-- backups
opt.backup = false
opt.swapfile = false
opt.writebackup = false

