

"PLUGIN -----
call plug#begin('~/.vim/plugged')

  "colorscheme
  Plug 'adrian5/oceanic-next-vim'
  Plug 'sainnhe/sonokai'
  Plug 'sainnhe/edge'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'jdkanani/vim-material-theme'
  Plug 'ayu-theme/ayu-vim' 
  Plug 'hzchirs/vim-material'


  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-airline/vim-airline' 
  Plug 'jiangmiao/auto-pairs'
  Plug 'ryanoasis/vim-devicons' "icons
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-commentary' 
  Plug 'honza/vim-snippets'
  Plug 'SirVer/ultisnips'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  "syntax
  Plug 'ianks/vim-tsx'
  Plug 'leafgarland/typescript-vim'
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'matze/vim-move' "moveline
  Plug 'lukas-reineke/indent-blankline.nvim'

  "file
  Plug 'junegunn/fzf',{'on':'<plug>:FZF'}
  Plug 'kyazdani42/nvim-web-devicons' 
  Plug 'romgrk/barbar.nvim'
  Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/setting.vim
source $HOME/.config/nvim/keybind.vim
source $HOME/.config/nvim/fnc.vim
source $HOME/.config/nvim/plugc.vim
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/tree.lua
source $HOME/.config/nvim/barbar.lua

