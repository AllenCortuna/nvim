function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command,{ noremap = true,silent= false})
end

function nmap(shortcut, command, silent)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end



vim.g['mapleader'] = "_"
vim.g['maplocalleader']= "@" 
nmap('sn',':set number! <cr>')
nmap('sw',':set wrap! <cr>')
nmap('sr',':source $MYVIMRC <cr>') 
nmap('so',':on <cr>') --map split  
nmap('c','dd')
nmap('o','o <esc>')
nmap('O', 'O <esc>')
 
nmap('Y', 'y$') --yank

--resize windows
nmap('<c-up>','<c-w>+')
nmap('<c-down>','<c-w>-') 
nmap('<c-left>','<c-w>>') 
nmap('<c-right>','<c-w><') 

nmap('<c-z>',':wall<cr>')
nmap('<leader>s', ':w!<cr>')
nmap('e',':exit')
nmap('<F4>', ':bd <cr>')
nmap('<c-n>',':bufdo bd <cr>')
nmap('<tab>',':FZF <cr>')
nmap('<leader>z',':noh<cr>')
nmap('<F1>',':%s//')
nmap('<F5>',':Neotree toggle <cr>')
nmap('<leader>pc',':PackerClean <cr>')
nmap('<leader>p',':PackerSync <cr>')
nmap('<space>p', ':packer')
nmap('<space>u', "['UltiSnipsEdit! <cr>")
nmap('<c-k>','<c-u>') 
nmap('<c-j>','<c-d>') 
vim.api.nvim_set_keymap('n', '<c-k>', '<c-u>',{ noremap = false,silent=true})
vim.api.nvim_set_keymap('n', '<c-j>', '<c-d>',{ noremap = false,silent=true})
 
