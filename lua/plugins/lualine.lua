-- For pretty status lines.
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = true,
        --theme = 'nightfly',
        --theme = 'codedark',
        theme = 'dracula'
      },
      sections = {
        lualine_a = {
          {
            'filename',
            path = 1,
          }
        }
      }
    })
  end
}
