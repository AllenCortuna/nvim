
local nmap = vim.api.nvim_set_keymap
local log = { noremap = true, silent = false }
local nolog = { noremap = true, silent = true }
local remap = { noremap = false, silent = true } --noremp 


vim.g['mapleader'] = "_"
vim.g['maplocalleader']= "@" 
 
 
nmap('n',  'sn',':set number! <cr>',log )
nmap('n', 'sw',':set wrap! <cr>',log )
nmap('n', 'sr',':source $MYVIMRC <cr>',log) 
nmap('n', 'so',':on <cr>', log) --map split  
nmap('n', 'c','dd', nolog)
nmap('n', 'o','o <esc> d^', log)
 
nmap('n', 'O', 'O <esc> d^', log)
 
nmap('n', 'Y', 'y$', log) --yank

--resize windows
nmap('n', '<c-up>','<c-w>+', log)
nmap('n', '<c-down>','<c-w>-', log) 
nmap('n', '<c-left>','<c-w>>', log) 
nmap('n', '<c-right>','<c-w><', log) 

nmap('n', '<leader>z',':wall<cr>', log)
nmap('n', '<c-s>', ':w!<cr>', log)
nmap('n', '<leader>q',':q<cr>', log)
nmap('n', '<F4>', ':bd <cr>', log)
nmap('n', '<tab>',':FZF <cr>', log)
nmap('n', '<leader>h',':noh<cr>', log)
nmap('n', '<leader><leader>',':w!<cr>', log)
nmap('n', '<F5>',':Neotree toggle <cr>', log)
nmap('n', '<leader>pc',':PackerClean <cr>', log)
nmap('n', '<leader>p',':PackerSync <cr>', log)
nmap('n', '<space>p', ':packer', log)
nmap('n', '<space>n', ':UltiSnipsEdit <cr>', nolog)
nmap('n', '<c-k>','<c-u>', log) 
nmap('n', '<c-j>','<c-d>', log)
nmap('n', '<c-o>', ':bprev <cr>', log)
nmap('n', '<c-p>', ':bnext <cr>', log)
-- nmap('n', 'k', '<c-u>', remap)
-- nmap('n', 'j', '<c-d>', remap)
nmap('n', '<leader>s', ':mks!<cr>', log)--saving session
nmap('n', 'dk', "d'k", log)
nmap('n', 'yk', "y'k", log)
 

nmap('n', '<leader>r', '* :%s///gc <left><left><left><left>', log) 
