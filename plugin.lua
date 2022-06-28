vim.cmd [[packadd packer.nvim]]
local n = event

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --colorscheme
  use { 'adrian5/oceanic-next-vim',opt=true }
  use { 'sainnhe/sonokai',opt=true }
  use { 'sainnhe/edge',opt=true }
  use { 'ghifarit53/tokyonight-vim'}
  use { 'jdkanani/vim-material-theme',opt=true }
  use { 'ayu-theme/ayu-vim',opt=true }
  use { 'hzchirs/vim-material',opt=true }
 
  use { 'romgrk/barbar.nvim', n='BufReadPost'}
  use { 'leafgarland/typescript-vim',ft={'typescript','javascript'}}
  use { 'ianks/vim-tsx',ft={'typescript','javascript'}}
  use {'mxw/vim-jsx' ,ft={'typescript','javascript'}}
  use {'pangloss/vim-javascript' ,ft={'typescript','javascript'}}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {'hail2u/vim-css3-syntax', ft={'css'}}
  use {'lukas-reineke/indent-blankline.nvim'}
  use {'kyazdani42/nvim-web-devicons' }
  use { 'vim-airline/vim-airline-themes'}
  use { 'vim-airline/vim-airline'  }
  use { 'tpope/vim-commentary'}
  use { 'honza/vim-snippets',n='VimEnter' }
  use {'SirVer/ultisnips' ,n='VimEnter' }
  use { 'jiangmiao/auto-pairs'}
  use { 'ryanoasis/vim-devicons' }
  use { 'junegunn/fzf',cmd={'FZF'}}
  use {'matze/vim-move' }
  use { 'neoclide/coc.nvim', branch = 'release' }
  

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
end)


