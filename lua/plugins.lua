-- /lua/plugins.lua

-- Lưu lại đường dẫn tới file lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Nếu đường dẫn trên ko tồn tại, thì dùng Git clone nó về
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

-- /lua/plugins.lua

-- ....

vim.opt.rtp:prepend(lazypath)

local theme = require('theme')

require("lazy").setup({
    theme,
})

-- /lua/plugins.lua
-- ...

local theme = require('theme')

require("lazy").setup({
      -- ....
      -- Status line
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                icons_enabled = false,
                theme = 'onedark',
                component_separators = '|',
                section_separators = '',
            }
        }
    },
})