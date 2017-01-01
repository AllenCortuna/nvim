


let mapleader = "_"
let maplocalleader= "a" 
" nnoremap $ :e $MYVIMRC<cr>
nnoremap sn :set nonumber ! <cr>
nnoremap sw :set nowrap! <cr>
nnoremap sr :source $MYVIMRC<cr>
nnoremap so :on <cr>

"Press \\ to jump back to the last cursor position.
nnoremap <leader>/ ``
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>
nnoremap c dd
inoremap hh <Esc>
 " Pressing the letter o will open a new line below the current one.
 " Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>
" Center the cursor vertically when moving to the next word during a search.
" nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><


nnoremap <c-z> :wall <cr> 
nnoremap <leader>s :w<cr>
nnoremap e :exit 
nnoremap <c-n> :bufdo bd <cr>
nnoremap <F4> :bd <cr>
inoremap <c-space> <c-n>
" nnoremap <space><space> :FZF <cr> 
nnoremap <tab> :FZF <cr> 
nnoremap zz :noh <cr>
nnoremap <F1> :%s//


nnoremap <F5> :Neotree toggle<cr>
nnoremap $ :Neotree /data/data/com.termux/files/home/.config/nvim <cr>
nnoremap <leader>p :PackerSync <cr>
nnoremap <leader>pc :PackerClean <cr>
nnoremap <space>p :packer

nnoremap S ['UltiSnipsEdit! <cr>
