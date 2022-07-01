
--PLUGCONFIG -----
--airline
vim.g['airline_powerline_fonts'] = 2
vim.g['airline#extensions#tabline#enabled'] = 0
vim.g['airline#extensions#tabline#left_sep'] = ''
vim.g['airline#extensions#tabline#left_alt_sep'] = ''
vim.g['airline#extensions#tabline#formatter'] = 'default'


--ULTISNIPPETS
-- Set ultisnips triggers
vim.g['UltiSnipsExpandTrigger'] = '<tab>'
vim.g['UltiSnipsJumpForwardTrigger'] = '<tab>' 
-- vim.g['UltiSnipsJumpBackwardTrigger'] = '<c-z>'
-- vim.g['UltiSnipsExpandTrigger'] = '<tab>'
-- vim.g['UltiSnipsJumpForwardTrigger'] = '<c-b>'

----IDENTGUIDE
require('indent_blankline').setup {
   -- for example, context is off by default, use this to turn it on
   -- show_current_context = true,
   -- show_current_context_start = true,
}

--OCEANIC
vim.g['oceanic_gutter_like_bg'] = 0
vim.g['oceanic_italic_comments'] = 0
--tokyonight
vim.g['tokyonight_italic_functions'] = 0
vim.g['tokyonight_italic_variables'] = 0
vim.g['tokyonight_italic_keywords'] = 0

--scroll 
require('neoscroll').setup()
require("todo-comments").setup()
 
 
