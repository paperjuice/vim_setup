# Vim_setup

### Description
This is just a tiny bash script that I run whenever I want to setup vim on a new machine. </br>
This is, of course, what I *personally* like to have for my vim setup. </br>
I can be ran on both centos or mac(with brew).
The .vimrc in this repo is deprecated. I have a separate repo with the .vimrc found [here](https://github.com/paperjuice/.vimrc.git)


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

#### Git branch in Iterm2
Command `send text at start`:
```bash
PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] Ξ " && clear
```
Add the following function to `.bash_profile`
```bash
#Show git branch in terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
```

#### Directory path in tab Iterm2
In `.bash_profile`:
```bash
#Iterm directory path in tab
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi
```

#### Git bash completion
Instructions: https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion

#### Set colors to match iTerm2 Terminal Colors
In `.bash_profile`:
```bash
export TERM=xterm-256color
```

#### Set CLICOLOR if you want Ansi Colors in iTerm2
In `.bash_profile`:
```bash
export CLICOLOR=1
```

#### Fully clear the console
In `.bash_profile`:
```bash
fclear() {
  clear
  printf '\e[3J'
}
```

### Additions
The .vimrc file will be moved to ~/
