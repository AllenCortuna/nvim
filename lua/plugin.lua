vim.cmd [[packadd packer.nvim]]
local n = event
local js = {'typescript','javascript'}
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --colorscheme
  use { 'adrian5/oceanic-next-vim',opt=true }
  use { 'ghifarit53/tokyonight-vim'}
  use { 'ayu-theme/ayu-vim',opt=true }
  use { 'marko-cerovac/material.nvim'}
  
   
  use {'hail2u/vim-css3-syntax', ft={'css'}}
  use { 'leafgarland/typescript-vim',opt= true, ft=js}
  use { 'ianks/vim-tsx',ft=js}
  use {'mxw/vim-jsx' ,ft=js}
  use {'pangloss/vim-javascript' ,ft=js}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {'lukas-reineke/indent-blankline.nvim'}
  use {'kyazdani42/nvim-web-devicons' }
  use { 'vim-airline/vim-airline-themes'}
  use { 'vim-airline/vim-airline' }
  use { 'romgrk/barbar.nvim',opt= true, n='BufReadPost'}
  use { 'tpope/vim-commentary'}
  use { 'honza/vim-snippets',opt=true,n='VimEnter' }
  use {'SirVer/ultisnips',opt=true ,n='VimEnter' }
  use { 'jiangmiao/auto-pairs'}
  use { 'ryanoasis/vim-devicons',opt=true }
  use { 'junegunn/fzf',cmd={'FZF'}}
  use { 'neoclide/coc.nvim', branch = 'release' }
  use {'karb94/neoscroll.nvim'}
   
  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
      }
    }
     
end)


