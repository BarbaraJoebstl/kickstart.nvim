return {
    -- none-ls, but still called null-ls, as forked from
    -- that repo that is not maintained anymore
    'nvimtools/none-ls.nvim',
    config = function()
        local null_ls = require 'null-ls'
        null_ls.setup {
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.yapf,
            },
        }
        vim.keymap.set('n', '<leader>as', vim.lsp.buf.format, {})
    end,
}
