return {
  -- none-ls, but still called null-ls, as forked from
  -- that repo that is not maintained anymore
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
    null_ls.setup {
      sources = {
        -- formatting
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.yapf,
      },
      on_attach = function(client, bufnr)
        if client.supports_method 'textDocument/formatting' then
          vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { bufnr = bufnr }
            end,
          })
        end
      end,
    }
    vim.keymap.set('n', '<leader>as', vim.lsp.buf.format, {})
  end,
}
