-- Adapted from https://github.com/jessarcher/dotfiles/blob/master/nvim/lua/user/options.lua

-- Visuals
vim.opt.fillchars:append({ eob = ' ' }) -- remove the ~ from end of buffer
vim.opt.linebreak = true -- wrap at word boundaries
vim.opt.list = true -- enable the below listchars
vim.opt.listchars = { tab = '▸ ', trail = '·' }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes:2'
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.titlestring = '%f // nvim'

-- Text
vim.opt.breakindent = true -- maintain indent when wrapping indented lines
vim.opt.cmdheight = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.wrap = false

-- Editor
vim.opt.backup = true -- automatically save a backup file
vim.opt.backupdir:remove('.') -- keep backups out of the current directory
vim.opt.clipboard = 'unnamedplus' -- Use Linux system clipboard
vim.opt.confirm = true -- ask for confirmation instead of erroring
vim.opt.completeopt = 'menuone,longest,preview'
vim.opt.ignorecase = true
vim.opt.mouse = 'a' -- enable mouse for all modes
vim.opt.mousemoveevent = true -- Allow hovering in bufferline
vim.opt.redrawtime = 10000 -- Allow more time for loading syntax on large files
vim.opt.spell = true
vim.opt.smartcase = true
vim.opt.scrolloff = 8
vim.opt.shortmess:append({ I = true }) -- disable the splash screen
vim.opt.showmode = false
vim.opt.sidescrolloff = 8
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true -- persistent undo
vim.opt.updatetime = 50
vim.o.timeoutlen = 300
vim.opt.wildmode = 'longest:full,full' -- complete the longest common match, and allow tabbing the results to fully complete them

-- Other
vim.opt.exrc = true
vim.opt.secure = true
