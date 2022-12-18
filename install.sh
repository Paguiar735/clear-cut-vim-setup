#!/bin/sh


beginInstallation() {

# 01 - Install vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 02 - Download the recommended settings:

curl https://raw.githubusercontent.com/Paguiar735/jarvis-does-vim/main/.vimrc -o ~/.vimrc
curl -fLo ~/.vim/coc-settings.json --create-dirs \
    https://raw.githubusercontent.com/Paguiar735/jarvis-does-vim/main/coc-settings.json

# 03 - Open up Vim with the following command to install the plugins automatically:

vim +PlugInstall
}

isAvailable() {
	if [ $1 -eq 0 ];
		then
			echo "[OK] $2 found"
		else
			echo "[FAIL] $2 not found"
	fi
}


curl --version 2>&1 >/dev/null
CURL_IS_AVAILABLE=$?
isAvailable $CURL_IS_AVAILABLE "cURL"

git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?
isAvailable $GIT_IS_AVAILABLE "Git"

node --version 2>&1 >/dev/null
NODE_IS_AVAILABLE=$?
isAvailable $NODE_IS_AVAILABLE "Node"


if [ $(($CURL_IS_AVAILABLE + $GIT_IS_AVAILABLE + $NODE_IS_AVAILABLE)) -eq 0 ];
	then
		echo "[OK] Installation started"
		beginInstallation
	else
		echo "[FAIL] Installation aborted"
fi
