return {
  'vim-test/vim-test',
  keys = {
    { '<Leader>tn', ':TestNearest<CR>' },
    { '<Leader>tf', ':TestFile<CR>' },
    { '<Leader>ts', ':TestSuite<CR>' },
    { '<Leader>tl', ':TestLast<CR>' },
    { '<Leader>tv', ':TestVisit<CR>' },
  },
  config = function()
    vim.cmd([[
      let test#php#phpunit#options = '--colors=always'
      let test#php#pest#options = '--colors=always'
    ]])
  end
}
