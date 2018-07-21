#!bin/bash

if [ yum list installed git > /dev/null 2>&1 ]; then
  yum -y install git;
else
  echo "Git is already installed"
fi

#install vim
yum -y install vim

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#move my vim configuration
mv .vimrc ~/

mkdir ~/.vim/bundle

#vim elixir
git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir

#vim -airline
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline

#vim better white space
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace

#vim nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree


#vim supertab
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab


#vim fugitive, git thingy
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive && \
vim -u NONE -c "helptags vim-fugitive/doc" -c q


#ack search
yum -y install epel-release && \
yum -y install ack && \
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim



