-- /lua/theme.lua
return {
  "oshdick/onedark.vim",
  lazy = false,
  priority = 1000,
  config = function()
      -- sử dụng lệnh `colorscheme` để load theme theo tên
      -- nếu bạn muốn load theme khác thì truy cập vào repo gốc nhé
      -- repo gốc: https://github.com/folke/tokyonight.nvim#-usage
      vim.cmd([[colorscheme onedark]])
  end,
}