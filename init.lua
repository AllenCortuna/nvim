


 _G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}

require('impatient')
require'impatient'.enable_profile()

require'setting'
require'plugin'
require'keymap'
require'key'
require'fnc'
require'coc'
require'plugsetting'
require'plug.material'

-- plugsetting 
--require'plug.treesitter'
--require'plug.galaxyline'
--require'plug.barbar'
--require'plug.neotree'
--require'plug.scroll'
--require'plug.tsRainbow'
--require'plug.wkey'
-- require'plug.gitsign'
-- require'plug.session'

