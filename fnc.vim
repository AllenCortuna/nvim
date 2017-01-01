
"  -----

autocmd BufNewFile * :write
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

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
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

augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

" autocmd Filetype vim,javascript,css,html,python,jsx |autocmd InsertLeave * :write 
