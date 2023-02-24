--vim.opt.guicursor = ""
vim.opt.guicursor = "i:ver25"
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "


-- Highlight current line
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.cmd('augroup highlight_cursor')
vim.cmd('autocmd!')
vim.cmd('autocmd VimEnter,WinEnter,BufWinEnter * highlight CursorColumn guibg=#0f0f0f')
vim.cmd('autocmd VimEnter,WinEnter,BufWinEnter * highlight CursorLine guibg=#0f0f0f')
vim.cmd('augroup END')

