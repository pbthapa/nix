-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.opt

-- appearance of nvim
o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"

-- line numbers
o.relativenumber = true
o.number = true

-- tabs and indentation
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true

-- line wrapping
o.wrap = false

-- search settings
o.ignorecase = true
o.smartcase = true

-- cursor line
o.cursorline = true

-- backspace
o.backspace = "indent,eol,start"

-- split windows
o.splitright = true
o.splitbelow = true

-- change word delimiter of vim from default to '-'
o.iskeyword:append("-")

o.winbar = "%=%m %f"
