#!/bin/bash

#add MAC user as in /Users/<user>/"
MAC_USER=${1:-""}


#check if Centos of MAC
UNAME=$(uname -s)

if [[ $UNAME =~ "Linux" ]]; then
  P_MANAGER=yum
  FLAG=-y
  echo "nope"
else
  P_MANAGER=brew
  FLAG=""
  if [[ $MAC_USER == "" ]]; then
    echo "Please provide the MAC's username"
    return 1
  fi
fi

if [[ $P_MANAGER == yum ]]; then
  #TODO: have a different check for 'if git is available(by version)'
  if [ yum list installed git > /dev/null 2>&1 ]; then
    yum -y install git;
  else
    echo "Git is already installed"
  fi
fi

#install vim
#TODO: Skip if it exists
$P_MANAGER $FLAG install vim

#install pathogen
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/" ]; then
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
  echo "Pathogen already exists."
fi

#move my vim configuration
cp .vimrc ~/

#vim elixir
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/vim-elixir" ]; then
  git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir
else
  echo "Vim-elixir already exists."
fi

#vim -airline
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/vim-airline" ]; then
  git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
else
  echo "Vim-airline already exists."
fi

#vim better white space
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/vim-better-whitespace" ]; then
  git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
else
  echo "vim-better-whitespace already exists."
fi

#vim nerdtree
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/nerdtree" ]; then
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
else
  echo "vim-better-whitespace already exists."
fi

#vim supertab
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/supertab" ]; then
  git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
else
  echo "Supertab already exists."
fi
#vim fugitive, git thingy
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/vim-fugitive" ]; then
  git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive && \
  vim -u NONE -c "helptags vim-fugitive/doc" -c q
else
  echo "Vim-fugitive already exists."
fi

#ack search
#TODO: this dont exist in brew. Ignore or find alternative
$P_MANAGER $FLAG install epel-release && \
$P_MANAGER $FLAG install ack
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/ack.vim" ]; then
  git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
else
  echo "Ack already exists."
fi

#file finder
if [ ! -d "/Users/${MAC_USER}/.vim/bundle/ctrlp.vim" ]; then
  git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
else
  echo "Ctrlp already exists."
fi
