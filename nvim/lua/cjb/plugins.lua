local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

    -- Color scheme
    { import = 'cjb.plugins.tokyonight' },

    -- Comments
    { import = 'cjb.plugins.vim-commentary' },

    -- Add, change, and delete surrounding text.
    { 'tpope/vim-surround' },

    -- Git commands.
    { 'tpope/vim-fugitive', dependencies = 'tpope/vim-rhubarb' },

    -- Allow plugins to enable repeating of commands.
    { 'tpope/vim-repeat' }, 

    -- Indent autodetection with editorconfig support.
    { 'tpope/vim-sleuth' },

    -- Pairs of handy bracket mappings, like [b and ]b.
    { 'tpope/vim-unimpaired', event = 'VeryLazy' },

    -- Navigate seamlessly between Vim windows and Tmux panes.
    { 'christoomey/vim-tmux-navigator' },

    -- Jump to the last location when opening a file.
    { 'farmergreg/vim-lastplace' },

    -- Enable * searching with visually selected text.
    { 'nelstrom/vim-visual-star-search' },


    -- Automatically set the working directory to the project root.
    { import = 'cjb.plugins.vim-rooter' },

    -- Automatically add closing brackets, quotes, etc.
    { 'windwp/nvim-autopairs', config = true },

    -- Add smooth scrolling to avoid jarring jumps
    { 'karb94/neoscroll.nvim', config = true },


})
