# jarvis-does-vim

(Readme Draft)

01 - Install vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

02 - Download recommended settings 

```
curl https://raw.githubusercontent.com/Paguiar735/jarvis-does-vim/main/.vimrc -O
curl -fLo ~/.vim/coc-settings.json --create-dirs \
    https://raw.githubusercontent.com/Paguiar735/jarvis-does-vim/main/coc-settings.json
```

PS: Open up `~/.vimrc` and `~/.vim/coc-settings.json` in your favorite text editor and remove the plugins that you won't use. It's important to notice that I need vim-go, and it takes several minutes to install, whereas all the other plugins' installation time combined just take a couple of seconds.  

03 - Open up Vim in visual mode to install the plugins automatically

```
vim
```

04 - If that doesn't work, run the following inside Vim's visual mode

```
:PlugInstall
```

## TODO

- Add a GIF / Illustration of the end result
- Create a dockerfile
