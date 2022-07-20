


vim.cmd([[

autocmd ExitPre * :write

" augroup filetype_vim
"     autocmd!
"     autocmd FileType vim setlocal foldmethod=marker
" augroup END
"
" Use K to show documentation in preview window.

" function! s:show_documentation()
"   if (index(['lua','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction



"plugin
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugin.lua source <afile> | PackerCompile
augroup end

" autocmd BufNewFile * :write
" autocmd BufNewFile,BufRead * :colorscheme material

]])
--autocmd BufRead * :set scl=yes
-- autocmd InsertLeave * :write
-- autocmd BufNewFile * :write
