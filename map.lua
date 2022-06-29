function map(mode, shortcut, command, no)
  vim.api.nvim_set_keymap(mode, shortcut, command,{ noremap = true, silent = no })
end

function nmap(shortcut, command, silent)
  no = false
  map('n', shortcut, command)
end

function imap(shortcut, command)
  no = false
  map('i', shortcut, command)
end

function nos(shortcut, command)
  no = true
  map('n', shortcut, command)
end

vim.g['mapleader'] = "_"
vim.g['maplocalleader']= "@" 
nmap('sn',':set number! <cr>')
nmap('sw',':set wrap! <cr>')
nmap('sr',':source $MYVIMRC <cr>') 
nmap('so',':on <cr>') --map split  
nos('c','dd')
nos('o','o <esc>')
nos('O', 'O <esc>')
 
nmap('Y', 'y$') --yank

--resize windows
nos('<c-up>','<c-w>+')
nos('<c-down>','<c-w>-') 
nos('<c-left>','<c-w>>') 
nos('<c-right>','<c-w><') 

nmap('<c-z',':wall<cr>')
nmap('<leader>s', ':w!<cr>')
nmap('e',':exit')
nos('<F4>', ':bd <cr>')
nos('<c-n>',':bufdo bd <cr>')
nos('<tab>',':FZF <cr>')
nmap('zz',':noh<cr>')
nmap('<F1>',':%s//')
nos('<F5>',':Neotree toggle <cr>')
nos('<leader>pc',':PackerClean <cr>')
nos('<leader>p',':PackerSync <cr>')
nos('<space>p', ':packer')
nos('<space>u', "['UltiSnipsEdit! <cr>")
