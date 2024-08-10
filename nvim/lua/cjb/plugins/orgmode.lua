return {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
        -- Setup orgmode
        require('orgmode').setup({
            org_agenda_files = '~/link/**/*',
            org_default_notes_file = '~/link/inbox/refile.org',
            org_startup_indented = false,
            org_startup_folded = 'showeverything',
        })
    end,
}
