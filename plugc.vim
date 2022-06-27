
"PLUGCONFIG -----
"airline
let g:airline_powerline_fonts = 2
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'

"EXTENSION 
" let g:coc_global_extensions = ['coc-tsser, 'coc-prettier']

"ULTISNIPPETS
" Set ultisnips triggers
nnoremap S :UltiSnipsEdit! <cr>
let g:UltiSnipsExpandTrigger="<tab>" 
let g:UltiSnipsJumpForwardTrigger="<tab>"           
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"

"IDENTGUIDE
lua<<Endof
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
Endof
"OCEANIC
let g:oceanic_gutter_like_bg = 0
let g:oceanic_italic_comments = 0
"tokyonight
let g:tokyonight_italic_functions = 1
let g:tokyonight_italic_variables = 1
let g:tokyonight_italic_keywords = 1
"moveline
let g:move_key_modifier = 'C'
let g:move_key_modifier_visualmode = 'C'
"FZF

