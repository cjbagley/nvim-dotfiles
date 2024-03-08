return {
    'folke/which-key.nvim',
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        -- custom configuration goes here
        -- or empty to use the default settings
    }
}
