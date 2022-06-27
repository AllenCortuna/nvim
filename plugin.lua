vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --colorscheme
  use {'dracula/vim', as = 'dracula'}
  use { 'adrian5/oceanic-next-vim'}
  use { 'sainnhe/sonokai'}
  use { 'sainnhe/edge'}
  use { 'ghifarit53/tokyonight-vim'}
  use { 'jdkanani/vim-material-theme'}
  use { 'ayu-theme/ayu-vim'} 
  use { 'hzchirs/vim-material'}
 
  use { 'romgrk/barbar.nvim' }
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
  -- use { ,event='VimEnter' }
  use { 'tpope/vim-commentary'}
  use { 'honza/vim-snippets',event='VimEnter' }
  use {'SirVer/ultisnips' ,event='VimEnter' }
  use { 'jiangmiao/auto-pairs'}
  use { 'ryanoasis/vim-devicons' }
  use { 'junegunn/fzf',cmd={'FZF'}}
  use {'matze/vim-move' }




  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
end)


