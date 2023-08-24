vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.timeoutlen = 1300

-- Working on a monorepop is fun!
-- See: https://github.com/vim/vim/issues/2049
vim.opt.mmp = 5000

-- Set vim backup off
vim.opt.backup = false
vim.opt.backupcopy = 'no'
vim.opt.backupdir = "~/vimtmp//,."
vim.opt.directory = "~/vimtmp//,."
vim.opt.writebackup = false

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.o.colorcolumn = "80"

vim.cmd [[set t_Co=256]]
vim.cmd [[set encoding=utf-8]]
vim.cmd [[set fileencodings=utf-8]]

vim.cmd [[set autoindent]]
vim.cmd [[set smartindent]]
vim.cmd [[set cindent]]
vim.cmd [[set background=dark]]
vim.cmd [[set expandtab]]
vim.cmd [[set smarttab]]
vim.cmd [[set shiftwidth=2]]
vim.cmd [[set softtabstop=2]]
vim.cmd [[set tabstop=2]]
vim.cmd [[set wildignore=*/.git/*,*/tmp/*,*.swp,*.pyc,*/node_modules/*]]
vim.cmd [[set ignorecase]]
vim.cmd [[set smartcase]]
vim.cmd [[set incsearch]]
vim.cmd [[set shiftround]]
vim.cmd [[set history=1000]]
vim.cmd [[set undolevels=1000]]
vim.cmd [[set noswapfile]]
vim.cmd [[set nobackup]]

vim.cmd [[set synmaxcol=512]]
vim.cmd [[syntax on]]
vim.cmd [[syntax sync minlines=256]]

vim.o.cursorline = true
vim.o.linespace = 3
