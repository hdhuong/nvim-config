-- Ensure packer.nvim is installed
vim.cmd [[packadd packer.nvim]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Initialize and configure packer.nvim
packer.startup(function(use)
  -- Add your plugins here
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- Add the OneDark theme
  use 'navarasu/onedark.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Load the OneDark theme
require('onedark').setup {
  style = 'dark'
}

-- Apply the theme
require('onedark').load()

vim.opt.clipboard = "unnamedplus"

-- Enable line numbers
vim.wo.number = true

-- Enable relative line numbers
vim.wo.relativenumber = true

-- vim.api.nvim_set_hl(0, 'Comment', { ctermfg = 'grey', fg = '#5c6370' })
-- vim.api.nvim_set_hl(0, 'Normal', { fg = '#abb2bf', bg = '#282c34' }) -- Normal text
-- vim.api.nvim_set_hl(0, 'Identifier', { fg = '#61afef' }) -- Variables and functions