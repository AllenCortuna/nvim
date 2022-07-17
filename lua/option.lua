
local set = vim.opt
set.timeoutlen=300
set.tabstop = 2 -- Set the behavior of tab
set.expandtab = true --tab insert space
set.compatible = false
set.errorformat:append('%f|%l col %c|%m')
set.cmdheight = 1
set.updatetime = 200
set.encoding = 'UTF-8'
set.number = true
set.cursorline = true
set.shiftwidth = 2
set.expandtab = true
set.backup = no
set.showmode = false
set.scrolloff = 0 --Do not let cursor scroll below or above N number of lines when scrolling.

set.wrap = true

set.ignorecase = true -- set ignorecase
set.smartcase = true --Ignore capital letters during search.

set.showcmd = false --Show partial command you type in the last line of the screen.

set.showmatch = true --show match in search

set.hlsearch = true --Use highlighting when doing a search.

set.history = 100 --Set the commands to save in history default number is 20.

set.wildmenu = true --Enable auto completion menu after pressing TAB.

set.relativenumber = true
-- set.splitright = false
set.sidescrolloff = 20 --Number of columns to keep at the sides of the cursor 

--Wildmenu will ignore files with these extensions.
set.wildignore = '*/.docx/*, */.jpg/*, */.png/*,*/.gif/*, */.pdf/*, */.pyc/*, */.exe/*, */.flv/*, */.img/*,*/.xlsx/*'

set.hidden = true

set.background = 'dark'
set.termguicolors = true

set.signcolumn="number"
set.pumheight= 10-- Height of the pop up menu 
set.clipboard= "unnamedplus"--Connection to the system clipboard
set.preserveindent = true -- Preserve indent structure as much as possible 
set.lazyredraw = true -- lazily redraw screen 
set.laststatus = 2 -- globalstatus
set.completeopt = {"menuone", "noselect"}-- Options for insert mode completion

-- highlight Cursor guifg= blue guibg=blue
-- highlight iCursor guifg=blue guibg=grey
-- set guicursor=n-v-c:block-Cursor
-- set guicursor+=i:block-iCursor
-- set guicursor+=n-v-c:blinkon0
-- set guicursor+=i:blinkwait10
vim.g["do_filetype_lua"] = 1 -- use filetype.lua 
vim.g["did_load_filetypes"] = 0 -- don't use filetype.vim 
vim.g["loaded_gzip"] = true --disable gzip
vim.g["loaded_logipat"] = true -- disable logipat
vim.g["loaded_matchit"] = true -- disable matchit
vim.g["loaded_netrwFileHandlers"] = true --disable netrw
vim.g["loaded_netrwPlugin"] = true -- disable netrw
vim.g["loaded_netrwSettngs"]  = true -- disable netrw
vim.g["loaded_remote_plugins"] = true --disable remote plugins

vim.cmd([[

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
-- set listchars=extends:>

