function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = false })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end



vim.g['mapleader'] = "_"
vim.g['maplocalleader']= "@" 
nmap('sn',':set number! <cr>')
nmap('sr',':source $MYVIMRC <cr>') 
nmap('so',':on <cr>') --map split  
nmap('c','dd <cr>')
nmap('o','o <esc>')
nmap('O', 'O <esc>')
nmap('Y', 'y$') --yank

--resize windows
nmap('<c-up>','<c-w>+')
nmap('<c-down>','<c-w>-') 
nmap('<c-left>','<c-w>>') 
nmap('<c-right>','<c-w><') 

nmap('<c-z',':wall<cr>')
nmap('<leader>s', ':w!<cr>')
nmap('q',':wq')
nmap('<F4>', ':bd <cr>')
nmap('<c-n>',':bufdo bd <cr>')
nmap('<tab>',':FZF')
nmap('zz',':noh<cr>')
nmap('<F1>',':%s//')
nmap('<F5>',':Neotree toggle <cr>')
nmap('<leader>pc',':PackerClean <cr>')
nmap('<leader>p',':PackerSync <cr>')
nmap('<space>p', ':packer')
nmap('<space>u', "['UltiSnipsEdit! <cr>")
