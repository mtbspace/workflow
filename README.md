# Workflow configuration
Tmux

Zsh

Vim

YouCompleteMe: a code-completion engine for Vim


### Prerequisites (debian packages)
tmux

zsh - set as default shell with chsh (use /usr/bin/zsh)

vim

vim-nox

fonts-powerline

build-essential

cmake

python3-dev


### Preferred font
https://files.ax86.net/terminus-ttf/files/4.47.0/terminus-ttf-4.47.0.zip


### When pulling or cloning, include the submodules:
``git clone --recurse-submodules https://github.com/mtbspace/workflow.git ~/workflow


### Link to tmux config files:
``ln -s -f ~/workflow/tmux/oh-my-tmux/.tmux.conf ~/.tmux.conf

``ln -s -f ~/workflow/tmux/tmux.conf.local ~/.tmux.conf.local


### Add plugins to vim
Launch vim and run :PluginInstall


### Follow you complete me full install instructions
https://github.com/Valloric/YouCompleteMe#full-installation-guide

Problems with python version mismatch?  See https://github.com/Valloric/YouCompleteMe/issues/2136


### Revert shell by switiching the shell back to bash
``chsh (use /bin/bash)

