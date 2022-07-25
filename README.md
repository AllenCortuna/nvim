# NVIM CONFIG
Nvim configuration using cmp completion for **Web Develelopment** on **Termux**

##### Requirements
-clang
-nodejs
-stylua
-prettier
-git
-packer

**NOTE:** neovim version must be >= 0.7 

##### Installation
**NOTE:** if your dont have the require package paste this
```sh
apt update && apt upgrade
```
```sh 
pkg install clang nodejs stylua prettier git
```

### Install Neovim
**NOTE:** must be on the .config dir
```sh 
git clone https://github.com/AllenCortuna/nvim
```
```sh 
nvim +PackerSync
```

