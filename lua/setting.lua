
local set = vim.opt
set.timeoutlen=200
-- Set the behavior of tab
set.tabstop = 2
set.expandtab = true
set.compatible = false
-- set.errorformat:append('%f|%l col %c|%m')
set.cmdheight = 1
set.updatetime = 300
set.encoding = 'UTF-8'
set.number = true
set.cursorline = true
set.shiftwidth = 2
set.expandtab = true
set.backup = no
set.showmode = false

--Do not let cursor scroll below or above N number of lines when scrolling.
set.scrolloff = 0

set.wrap = true

--Ignore capital letters during search.
-- set ignorecase
set.ignorecase = true
set.smartcase = true

--Show partial command you type in the last line of the screen.
set.showcmd = false

--show match in search
set.showmatch = true

--Use highlighting when doing a search.
set.hlsearch = true

--Set the commands to save in history default number is 20.
set.history = 100

--Enable auto completion menu after pressing TAB.
set.wildmenu = true

set.relativenumber = true
set.splitright = false

--Wildmenu will ignore files with these extensions.
set.wildignore = '*/.docx/*, */.jpg/*, */.png/*,*/.gif/*, */.pdf/*, */.pyc/*, */.exe/*, */.flv/*, */.img/*,*/.xlsx/*'

set.hidden = true

set.background = 'dark'
set.termguicolors = true


-- highlight Cursor guifg= blue guibg=blue
-- highlight iCursor guifg=blue guibg=grey
-- set guicursor=n-v-c:block-Cursor
-- set guicursor+=i:block-iCursor
-- set guicursor+=n-v-c:blinkon0
-- set guicursor+=i:blinkwait10


vim.cmd([[
  set listchars=extends:>
  set shortmess+=c
  set nocompatible
  filetype on
  filetype plugin on
  filetype indent on
  syntax on
  set wildmode=list:longest
  set backupdir=~/.vim/backup
  set directory=~/.vim/tmp
]])
