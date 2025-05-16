-- Basic Neovim configuration
-- This is a minimal setup. Consider expanding it with a plugin manager like Packer or lazy.nvim

-- General settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.ttyfast = true
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.updatetime = 300
vim.opt.timeoutlen = 400
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.cursorline = true
vim.opt.cmdheight = 1
vim.opt.scrolloff = 5
vim.opt.colorcolumn = '80'
vim.opt.fileencoding = 'utf-8'
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath('data') .. '/undodir'

-- Set leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Key mappings
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>/', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Better split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Resize splits with arrow keys
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Basic Catppuccin colorscheme settings
vim.cmd [[
  highlight Normal guibg=#1e1e2e guifg=#cdd6f4
  highlight LineNr guifg=#45475a
  highlight CursorLine guibg=#313244
  highlight CursorLineNr guifg=#f9e2af
  highlight Visual guibg=#45475a
  highlight Search guibg=#f9e2af guifg=#1e1e2e
  highlight IncSearch guibg=#f9e2af guifg=#1e1e2e
  highlight Pmenu guibg=#313244 guifg=#cdd6f4
  highlight PmenuSel guibg=#89b4fa guifg=#1e1e2e
  highlight StatusLine guibg=#1e1e2e guifg=#cdd6f4
  highlight Comment guifg=#7f849c
  highlight Constant guifg=#fab387
  highlight String guifg=#a6e3a1
  highlight Function guifg=#89b4fa
  highlight Identifier guifg=#cdd6f4
  highlight Statement guifg=#cba6f7
  highlight PreProc guifg=#f38ba8
  highlight Type guifg=#f9e2af
  highlight Special guifg=#f38ba8
  highlight Error guifg=#f38ba8
  highlight Todo guifg=#f9e2af guibg=NONE
  highlight SignColumn guibg=#1e1e2e
  highlight ColorColumn guibg=#313244
]]

-- Auto commands
vim.cmd([[
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent! loadview
  augroup END

  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=300}
  augroup END
]])