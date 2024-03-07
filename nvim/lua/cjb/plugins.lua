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

    -- Split arrays and methods onto multiple lines, or join them back up.
    { import = 'cjb.plugins.treesj' },

    -- Automatically fix indentation when pasting code.
    { import = 'cjb.plugins.vim-pasta' },

    -- Fuzzy finder
    { import = 'cjb.plugins.telescope' },

    -- File tree sidebar
    { import = 'cjb.plugins.neo-tree' },

    -- A Status line.
    { import = 'cjb.plugins.lualine' },

    -- Display buffers as tabs.
    { import = 'cjb.plugins.bufferline' },

    -- Improved syntax highlighting
    { import = 'cjb.plugins.treesitter' },

    -- Language Server Protocol.
    { import = 'cjb.plugins.lspconfig' },

    -- Completion
    { import = 'cjb.plugins.cmp' },

    -- PHP Refactoring Tools
    { import = 'cjb.plugins.phpactor' },

    -- Testing helper
    { import = 'cjb.plugins.vim-test' },

    -- Colorize Hex Codes
    { import = 'cjb.plugins.colorizer' },

    -- Show file and LSP context in a bar at the top of the screen.
    { import = 'cjb.plugins.barbecue' },

    -- Virtual scrollbar
    { import = 'cjb.plugins.nvim-scrollbar' },

    -- Highlight occurrences of the word under the cursor.
    { import = 'cjb.plugins.illuminate' },

    -- Emmet functionality --
  { 'mattn/emmet-vim' },

  -- Grammer checker, run :GrammerousCheck
  { 'rhysd/vim-grammarous' },
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
  install = {
    colorscheme = { "tokyonight", "habamax" },
  },
})
