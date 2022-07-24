

require('telescope').setup{
  defaults = {
    layout_strategy = 'vertical',
    layout_config = { height = 80 },
  },
  pickers = {
    find_files = {
      -- theme = "dropdown", --dropdown cursor ivy
    }
  },
  extensions = {
  }
}
require('telescope').load_extension('luasnip')
