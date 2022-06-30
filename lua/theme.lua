



require('material').setup()
--SONOKAI
vim.g['sonokai_style'] = 'andromeda'
--vim.g:sonokai_style = 'maia'
--vim.g:sonokai_style = 'atlantis'
vim.g['sonokai_better_performance'] = 1          

--AYU
--vim.ayucolor="light-- --for light version of theme
--vim.ayucolor="mirage----for mirage version of theme
vim.ayucolor='dark' --for dark version of theme

--MATERIAL
vim.g['material_style'] = "deep ocean" 
vim.api.nvim_set_keymap('n', '<leader><space>', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })
--vim.g:material_style='dark'

 
vim.g['airline_theme'] = 'tokyonight'


vim.g['tokyonight_style'] ='night' 
--available: night, storm
vim.g['tokyonight_enable_italic'] = 0

--colorscheme sonokai
--colorscheme edge
--colorscheme onedarkpro 
--colorscheme material
--colorscheme ayu
-- colorscheme oceanicnext  
vim.cmd 'colorscheme material'
