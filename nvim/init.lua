-- example opts: {buffer = bufnr, remap = false, description = "hello"}
CJB = {}
function CJB.Nmap(keys, func, desc, additional_opts)
    local opts = {}
    if desc then opts.desc = desc end
    if additional_opts then
        for k, v in pairs(additional_opts) do
            opts[k] = v
        end
    end
    vim.keymap.set('n', keys, func, opts)
end

require('cjb/keymaps')
require('cjb/plugins')
require('cjb/options')
