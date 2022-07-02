vim.cmd [[packadd packer.nvim]]
local n = event
local js = {'typescript','javascript'}
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'adrian5/oceanic-next-vim',opt=true }
  use { 'ghifarit53/tokyonight-vim'}
  use { 'ayu-theme/ayu-vim',opt=true }
  use { 'marko-cerovac/material.nvim'}

-- : syntax
  use {'hail2u/vim-css3-syntax', ft={'css'}}
  use { 'leafgarland/typescript-vim', ft=js}
  use { 'ianks/vim-tsx',ft=js}
  use {'mxw/vim-jsx' ,ft=js}
  use {'pangloss/vim-javascript' ,ft=js}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
   
-- : interface  
  use {'lukas-reineke/indent-blankline.nvim'}
  use {'kyazdani42/nvim-web-devicons' }
  -- use {'romgrk/barbar.nvim'}
   use {'akinsho/bufferline.nvim', tag = "v2.*" }
   use{"NTBBloodbath/galaxyline.nvim"}
   
   
-- : utils   
  use { 'tpope/vim-commentary'}
  use { 'honza/vim-snippets'}
  use { 'SirVer/ultisnips'}
  use { 'jiangmiao/auto-pairs'}
  use { 'neoclide/coc.nvim', branch = 'release'}
  use { "folke/todo-comments.nvim",requires = "nvim-lua/plenary.nvim",}
   
     
-- : file explorer
  use { 'junegunn/fzf',cmd={'FZF'}}
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


