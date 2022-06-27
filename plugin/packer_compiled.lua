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
  ["auto-pairs"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
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
  dracula = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  edge = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  fzf = {
    commands = { "FZF" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
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
  sonokai = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
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
    after_files = { "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-css3-syntax"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-css3-syntax",
    url = "https://github.com/hail2u/vim-css3-syntax"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
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
  ["vim-material"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-material",
    url = "https://github.com/hzchirs/vim-material"
  },
  ["vim-material-theme"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-material-theme",
    url = "https://github.com/jdkanani/vim-material-theme"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-move",
    url = "https://github.com/matze/vim-move"
  },
  ["vim-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-tsx"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-tsx",
    url = "https://github.com/ianks/vim-tsx"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FZF lua require("packer.load")({'fzf'}, { cmd = "FZF", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'typescript-vim', 'vim-tsx', 'vim-jsx', 'vim-javascript'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'vim-css3-syntax'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'typescript-vim', 'vim-tsx', 'vim-jsx', 'vim-javascript'}, { ft = "javascript" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-snippets', 'ultisnips'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/typescript-vim/ftdetect/typescript.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/typescript-vim/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/typescript-vim/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-tsx/ftdetect/typescript.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-tsx/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-tsx/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-jsx/ftdetect/javascript.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-jsx/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-jsx/ftdetect/javascript.vim]], false)
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim]], false)
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim]], true)
vim.cmd [[source /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
