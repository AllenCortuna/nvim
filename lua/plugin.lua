vim.cmd [[packadd packer.nvim]]
 
local n = event
local js = {'typescript','javascript'}
local et = 'InsertEnter'
local br = 'BufRead'
 
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
  use {'lukas-reineke/indent-blankline.nvim',n = br}
  use {'kyazdani42/nvim-web-devicons', n =et}
  use { "NTBBloodbath/galaxyline.nvim",n =et}
  use { 'romgrk/barbar.nvim',n = br }
  use { 'p00f/nvim-ts-rainbow',n = br }  
  use {'lewis6991/gitsigns.nvim'}
 
-- : utils   
  use { 'honza/vim-snippets', n =br }
  use { 'SirVer/ultisnips', n = br}
  use { 'jiangmiao/auto-pairs', n = et}
  use { 'neoclide/coc.nvim', branch = 'release',n = br}
  use { 'declancm/cinnamon.nvim',n = et }
 
-- : file explorer
  use { 'junegunn/fzf',cmd={'FZF'}}
  use { "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
      },n = br} 

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
end)


