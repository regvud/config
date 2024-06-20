local lualine = require('lualine')

local config = {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '│', right = '│' },
    section_separators = { left = '', right = '█' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', {
      'diff',
      diff_color = {
        added = {
          fg = "#2da44e",
        },
        modified = {
          fg = "#e16f24",
        },
        removed = {
          fg = "#fa4549",
        }
      }
    }, 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', { 'fileformat', symbols = { unix = '' } }, 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

lualine.setup(config)
