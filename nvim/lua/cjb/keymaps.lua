vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Custom wrapper used below so description can be added for which-key

-- Save/Write/close
CJB.Nmap('<leader>w', ':w<CR>', 'write changes', {})
CJB.Nmap('<leader>W', ':W<CR>', 'write and quit', {})
CJB.Nmap('<leader>Q', ':q<CR>', 'quit', {})
CJB.Nmap('<leader>q', ':bd<CR>', 'close open buffer', {})

-- Split related
CJB.Nmap('<leader>|', '<C-w>v', 'split window vertically', {})
CJB.Nmap('<leader>-', '<C-w>s', 'split window horizontally', {})
CJB.Nmap('<leader>se', '<C-w>e', 'make splits equal width', {})
CJB.Nmap('<leader>x', ':close<CR>', 'close split', {})

-- Movement
vim.keymap.set('n', '<M-h>', ':bp<CR>')
vim.keymap.set('n', '<M-l>', ':bn<CR>')

-- Below from jessarcher/dotfiles, but some changed to use my wrapper

-- Quickly clear search highlighting.
CJB.Nmap('<leader>k', ':nohlsearch<CR>', 'clear search highlighting', {})

-- Reselect visual selection after indenting.
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Maintain the cursor position when yanking a visual selection.
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set('v', 'y', 'myy`y')
vim.keymap.set('v', 'Y', 'myY`y')

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Paste replace visual selection without copying it.
vim.keymap.set('v', 'p', '"_dP')

-- Open the current file in the default program (on Mac this should just be just `open`).
CJB.Nmap('<leader>o', ':!xdg-open %<cr><cr>', 'open in default program', {})

-- Disable annoying command line thing.
vim.keymap.set('n', 'q:', ':q<CR>')

-- Move text up and down
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':move .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv")
