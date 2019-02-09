# Workflow configuration
Configuration for Tmux, Zsh, Vim and plugins for working with javascript and typescript

### Debian prerequisite packages
git

tmux

zsh - set as default shell with chsh (use /usr/bin/zsh)

vim

vim-nox

fonts-powerline

build-essential

cmake

python3-dev or python-dev

### Nodejs
Refer to nodejs website

### NPM prerequisite packages
Install globally
```
sudo npm install eslint eslint-plugin-import eslint-plugin-import eslint-plugin-node eslint-plugin-promise eslint-plugin-standard -g
sudo npm install typescript -g
```

### Preferred font
https://files.ax86.net/terminus-ttf/files/4.47.0/terminus-ttf-4.47.0.zip

### When pulling or cloning, include the submodules:
```
git clone --recurse-submodules https://github.com/mtbspace/workflow.git ~/workflow
```
If they are still missing, try:
```
git submodule update --init
```

### Link to config files:
```
ln -s -f ~/workflow/tmux/oh-my-tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/workflow/tmux/tmux.conf.local ~/.tmux.conf.local
ln -s -f ~/workflow/zsh/zshrc.sh ~/.zshrc
ln -s -f ~/workflow/vim/vimrc.vim ~/.vimrc
```

### Add plugins to vim
Launch vim and run 
```
:PluginInstall
```

### Compile 'You Complete Me' vim plugin
```
cd ~/workflow/vim/.installed_plugins/YouCompleteMe
./install.py
```
Problems with python version mismatch?  See https://github.com/Valloric/YouCompleteMe/issues/2136

### JavaScript and TypeScript support
```
cd ~/workflow/vim/.installed_plugins/YouCompleteMe/third_party/ycmd
npm install -g --prefix third_party/tsserver typescript
```

### Revert shell by switching the shell back to bash
```
chsh (use /bin/bash)
```
Or in konsole settings
