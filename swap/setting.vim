"SETTING -----
" Give more space for displaying messages.
set cmdheight=1
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

 " Enable plugins and load plugin for the detected file type.
filetype plugin on

set encoding=UTF-8
"Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number
 " Highlight cursor line underneath the cursor horizontally.
 "
set cursorline
"Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

"Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=0

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

set smartcase

syntax enable  
"Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set noshowmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

set splitright

" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
autocmd InsertEnter * set cul

set hidden

set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" let g:airline_theme='material'

set termguicolors
let g:tokyonight_style ='night' "available: night, storm
let g:tokyonight_enable_italic = 0

syntax enable
set background=dark

" highlight Cursor guifg= blue guibg=blue
" highlight iCursor guifg=blue guibg=grey
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:block-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10


