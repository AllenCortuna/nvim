vim.cmd([[

" if has("nvim-0.5.0") || has("patch-8.1.1564")
"   set signcolumn=number
" else
"  set signcolumn=yes
" endif

autocmd ExitPre * :write

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup exe_code 
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>r
    \ sp<CR> :term python3 %<CR> :startinsert<CR> 
augroup END

" If Vim version is equal to or greater than 7.3 enable undofile.This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

"jsx and tsx
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.jsx setlocal filetype=javascript.jsx

"plugin
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugin.lua source <afile> | PackerCompile
augroup end

autocmd BufNewFile * :write
autocmd VimEnter * :TSUpdate

]])
--autocmd BufRead * :set scl=yes
-- autocmd InsertLeave * :write
-- autocmd BufNewFile * :write
