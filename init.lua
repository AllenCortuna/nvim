
 
 
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


require'plugin'
require'setting'
require'map'
require'theme'
require'plugsetting'
 
-- plugsetting 
require'plug.dev-icons'
require'plug.galaxyline'
require'plug.barbar'
require'plug.neotree'
require'plug.scroll'
require'plug.tsRainbow'
require'plug.gitsign'

vim.cmd([[
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/fnc.vim
]])


-- NOTE: haha 
