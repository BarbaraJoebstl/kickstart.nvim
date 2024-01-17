-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })



--https://github.com/vim/vim/blob/master/runtime/mswin.vim
vim.keymap.set('n', '<D-s>', ':update<CR>')
vim.keymap.set('v', '<D-s>', '<C-C>:update<CR>')
vim.keymap.set('i', '<D-s>', '<Esc>:update<CR>gi')
vim.keymap.set('v', '<D-c>', '"+y')
vim.keymap.set('v', '<D-x>', '"+x')
vim.keymap.set('n', '<C-p>', '<C-]>')
vim.keymap.set({ 'i', 'c' }, '<D-v>', '<C-r>+')
vim.keymap.set('', '<D-v>', '"+gP')
vim.keymap.set('v', '<BS>', 'd')
-- vim.keymap.set('n', '<BS>', '<C-^>')

-- tabs
vim.keymap.set('n', '<D-1>', '1gt')
vim.keymap.set('n', '<D-2>', '2gt')
vim.keymap.set('n', '<D-3>', '3gt')
vim.keymap.set('n', '<D-4>', '4gt')
vim.keymap.set('n', '<D-5>', '5gt')
vim.keymap.set('n', '<D-[>', ':tabprevious<CR>')
vim.keymap.set('n', '<D-]>', ':tabnext<CR>')
vim.keymap.set('n', '<D-t>', ':tabnew<CR>')
vim.keymap.set('n', '<D-w>', ':close<CR>')

-- windows
vim.keymap.set('n', '<D-d>', ':vsp<CR>')
vim.keymap.set('n', '<C-D-d>', ':sp<CR>')
vim.keymap.set('t', '<C-h>', '<C-\\><C-N><C-w>h')
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-w>j')
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-w>k')
vim.keymap.set('t', '<C-l>', '<C-\\><C-N><C-w>l')
vim.keymap.set('i', '<C-h>', '<C-\\><C-N><C-w>h')
vim.keymap.set('i', '<C-j>', '<C-\\><C-N><C-w>j')
vim.keymap.set('i', '<C-k>', '<C-\\><C-N><C-w>k')
vim.keymap.set('i', '<C-l>', '<C-\\><C-N><C-w>l')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
