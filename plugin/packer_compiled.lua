-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cinnamon.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/cinnamon.nvim",
    url = "https://github.com/declancm/cinnamon.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["indent-o-matic"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/indent-o-matic",
    url = "https://github.com/Darazaki/indent-o-matic"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["oceanic-next-vim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/oceanic-next-vim",
    url = "https://github.com/adrian5/oceanic-next-vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight-vim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/tokyonight-vim",
    url = "https://github.com/ghifarit53/tokyonight-vim"
  },
  ["typescript-vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/typescript-vim",
    url = "https://github.com/leafgarland/typescript-vim"
  },
  ultisnips = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-css3-syntax"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-css3-syntax",
    url = "https://github.com/hail2u/vim-css3-syntax"
  },
  ["vim-javascript"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsx"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-jsx",
    url = "https://github.com/mxw/vim-jsx"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-tsx"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-tsx",
    url = "https://github.com/ianks/vim-tsx"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType css ++once lua require("packer.load")({'vim-css3-syntax'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'typescript-vim', 'vim-javascript', 'vim-tsx', 'vim-jsx'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'typescript-vim', 'vim-javascript', 'vim-tsx', 'vim-jsx'}, { ft = "javascript" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/typescript-vim/ftdetect/typescript.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/typescript-vim/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/typescript-vim/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim]], false)
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim]], false)
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-tsx/ftdetect/typescript.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-tsx/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-tsx/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-jsx/ftdetect/javascript.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-jsx/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-jsx/ftdetect/javascript.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
