

local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then impatient.enable_profile() end

for _, source in ipairs {
  'option',
  'plugin',
  'mapping',
  'register-key',
  'autocmd',
  'coc',
  'plugsetting',
} do
   local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

--  _G.__luacache_config = {
--   chunks = {
--     enable = true,
--     path = vim.fn.stdpath('cache')..'/luacache_chunks',
--   },
--   modpaths = {
--     enable = true,
--     path = vim.fn.stdpath('cache')..'/luacache_modpaths',
--   }
-- }
-- require('impatient')
-- require'impatient'.enable_profile()
-- require'setting'
-- require'plugin'
-- require'keymap'
-- require'key'
-- require'fnc'
-- require'coc'
-- require'plugsetting'
-- require'plug.material'

