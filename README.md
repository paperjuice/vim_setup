# Vim_setup

### Description
This is just a tiny bash script that I run whenever I want to setup vim on a new machine. </br>
This is, of course, what I *personally* like to have for my vim setup. </br>
I can be ran on both centos or mac(with brew).


### What it contains?
By running the bash script you will get a small .vimrc file which is a vim custom config file
Plus, the following packages:
* ###### [pathogen.vim](https://github.com/tpope/vim-pathogen) - Vim package manager
* ###### [vim-elixir](https://github.com/elixir-editors/vim-elixir) - Elixir code syntax
* ###### [vim-airline](https://github.com/vim-airline/vim-airline) - Shows status bar
* ###### [vim-better-white-space](https://github.com/ntpeters/vim-better-whitespace) - Shows if there are triling white spaces
* ###### [vim-nerdtree](https://github.com/scrooloose/nerdtree) - Directory explorer
* ###### [vim-supertab](https://github.com/ervandew/supertab) - Autocomplete by pressing the TAB key
* ###### [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git integration
* ###### [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) - File finder
* ###### [ack.vim](https://github.com/mileszs/ack.vim) - Ack integration


### Installation
For Mac, you will need git installed.

If you run it on Centos, git is going to be installed if missing.

Once that is done, clone the repo and cd into it
```
git clone https://github.com/paperjuice/vim_setup.git && \
cd vim_setup
```
  
Make sure the vim_setup.sh script is executable
```
chmod a+x vim_setup.sh
```

#### Run the bash script
For Mac
```
./vim_setup.sh <Users/user>
```


### Additions
The .vimrc file will be moved to ~/
