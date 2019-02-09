# Workflow configuration
Configuration for Tmux, Zsh, Vim and plugins:

YouCompleteMe: a code-completion engine for Vim


### Prerequisites (debian packages)
tmux

zsh - set as default shell with chsh (use /usr/bin/zsh)

vim

vim-nox

fonts-powerline

build-essential

cmake

python3-dev or python-dev

### ESLine
Install globally
```
sudo npm install eslint eslint-plugin-import eslint-plugin-import eslint-plugin-node eslint-plugin-promise eslint-plugin-standard --global
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

### Link to tmux config files:
```
ln -s -f ~/workflow/tmux/oh-my-tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/workflow/tmux/tmux.conf.local ~/.tmux.conf.local
```

### Add plugins to vim
Launch vim and run 
```
:PluginInstall
```

### Compile You Complete Me
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
