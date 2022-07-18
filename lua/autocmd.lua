vim.cmd([[


autocmd ExitPre * :write

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


" If Vim version is equal to or greater than 7.3 enable undofile.This allows you to undo changes to a file even after saving it.

"plugin
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugin.lua source <afile> | PackerCompile
augroup end

autocmd BufNewFile * :write
" autocmd BufNewFile,BufRead * :colorscheme material

]])
--autocmd BufRead * :set scl=yes
-- autocmd InsertLeave * :write
-- autocmd BufNewFile * :write
