return {
    'renerocksai/telekasten.nvim',
    lazy = false,
    opts = {
        home = vim.fn.expand("~/link/zet"),
        extension = "org",
        install_syntax = false,
        tag_notation = "@"
    },
    -- config = function()
    --     -- Setup orgmode
    --     require('orgmode').opts({
    --         home = vim.fn.expand("~/link/zet"),
    --         extension = ".org",
    --         install_syntax = false,
    --         tag_notation = "@"
    --     })
    -- end,
}
