--[[

  If you don't know anything about Lua, I recommend taking some time to read through
  a guide. One possible example:
  - https://learnxinyminutes.com/docs/lua/


  And then you can explore or search through `:help lua-guide`
  - https://neovim.io/doc/user/lua-guide.html


Kickstart Guide:

I have left several `:help X` comments throughout the init.lua
You should run that command and read that help section for more information.

In addition, I have some `NOTE:` items throughout the file.
These are for you, the reader to help understand what is happening. Feel free to delete
them once you know what you're doing, but they should serve as a guide for when you
are first encountering a few different constructs in your nvim config.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now :)
--]]



-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Setting vim globals ]]
require 'custom.vim-settings.vim-globals'
-- [[ Setting vim keymaps ]]
require 'custom.vim-settings.vim-keymaps'
-- [[ Setting vim options ]]
require 'custom.vim-settings.vim-options'
-- [[ Setting highlight yank ]]
require 'custom.vim-settings.vim-highlight-yank'

-- [[ Configure plugins ]]
-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  -- for additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
  require 'kickstart.plugins.autoformat',
  -- require 'kickstart.plugins.debug',
  { import = 'custom.plugins'},
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim',  opts = {} },
}, {})

if vim.loop.os_uname().sysname == 'Darwin' then
  vim.o.shell = '/opt/homebrew/bin/fish'
elseif vim.o.shell == 'Linux' then
  vim.o.shell = '/home/linuxbrew/.linuxbrew/bin/fish'
end
-- Put anything you want to happen only in Neovide here
vim.g.neovide_scale_factor = 1.6
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set('n', '<D-=>', function()
  change_scale_factor(1.10)
end)
vim.keymap.set('n', '<D-->', function()
  change_scale_factor(1 / 1.10)
end)
-- new app
vim.keymap.set('n', '<D-n>', '<CMD>silent !neovide<CR>')

-- terminal
vim.keymap.set('t', '<D-BS>', '<C-\\><C-n>')
vim.api.nvim_create_autocmd({ "TermOpen" }, {
  callback = function()
    vim.cmd('startinsert')
    vim.o.showmode = false
  end
})

vim.g.neovide_padding_top = 10
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
vim.g.neovide_hide_mouse_when_typing = true
-- additional filetypes
vim.filetype.add({
  extension = {
    templ = "templ",
  },
})
vim.filetype.add({
  extension = {
    tf = "terraform",
  },
})
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
