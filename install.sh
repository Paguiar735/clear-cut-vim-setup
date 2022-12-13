# 01 - Install vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# 02 - Download the recommended settings:

```
curl https://raw.githubusercontent.com/Paguiar735/jarvis-does-vim/main/.vimrc -O
curl -fLo ~/.vim/coc-settings.json --create-dirs \
    https://raw.githubusercontent.com/Paguiar735/jarvis-does-vim/main/coc-settings.json
```

# 03 - Open up Vim with the following command to install the plugins automatically:

```
vim +PlugInstall
```