vim.cmd [[packadd packer.nvim]]
 
local n = event
local js = {'typescript','javascript'}
local et = 'InsertEnter'
local buf = 'BufRead'
 
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'
  -- theme
  use { 'adrian5/oceanic-next-vim',n = et }
  use { 'ghifarit53/tokyonight-vim',n = et}
  use { 'ayu-theme/ayu-vim',n = et}
  use { 'marko-cerovac/material.nvim',n =et}

-- : syntax
  use { 'hail2u/vim-css3-syntax', ft={'css'}}
  use { 'leafgarland/typescript-vim', ft=js}
  use { 'ianks/vim-tsx',ft=js}
  use { 'mxw/vim-jsx' ,ft=js}
  use { 'pangloss/vim-javascript' ,ft=js}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
   
-- : interface  
  use {'lukas-reineke/indent-blankline.nvim',n = buf}
  use {'kyazdani42/nvim-web-devicons', n =et}
  use { "NTBBloodbath/galaxyline.nvim",n =et}
  use { 'romgrk/barbar.nvim',n = buf }
  use { 'p00f/nvim-ts-rainbow',n = buf }  
  use {'lewis6991/gitsigns.nvim'}
 
-- : utils   
  use { 'honza/vim-snippets', n =buf }
  use { 'SirVer/ultisnips', n = buf}
  use { 'neoclide/coc.nvim', branch = 'release',n= buf}
  use { 'declancm/cinnamon.nvim',n = et }
  use { 'windwp/nvim-ts-autotag',n = buf }
  use {"windwp/nvim-autopairs", n = buf}
 
-- : file explorer
  use { 'junegunn/fzf',cmd={'FZF'}}
  use { "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
      },n = buf} 

  -- comment
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  --key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }
end)


