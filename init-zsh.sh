#!/bin/bash

echo "###########[ install zsh ]##########"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "###########[ install autojump ]##########"
git clone git://github.com/wting/autojump.git
cd autojump && ./install.py
cd ../ && rm -fr autojump


echo "###########[ install zsh-autosuggestions ]##########"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


echo "###########[ install zsh-highlighting ]##########"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

echo "###########[ install succeed ]##########"
