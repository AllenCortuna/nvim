# NVIM CONFIG
Nvim configuration using cmp completion for **Web Develelopment** on **Termux**

##### Packages 
- clang
- nodejs
- stylua
- prettier
- git
- packer

**NOTE:** neovim version must be >= 0.7 

#### Installation
##### Termux pkg
**NOTE:** if your dont have the require package paste this
```sh
apt update && apt upgrade
```
```sh 
pkg install clang nodejs stylua git fzf ripgrep lazygit fish neovim ncdu gh tmux
```


##### oh-my-fish
```sh
git clone https://github.com/oh-my-fish/oh-my-fish
```
```sh
cd oh-my-fish
```
```sh
bin/install --offline
```

##### Code Formater
```sh 
npm i -g prettier
```

#### Install Neovim
**NOTE:** must be on the .config dir
```sh 
git clone https://github.com/AllenCortuna/nvim
```
```sh 
nvim +PackerSync
```

