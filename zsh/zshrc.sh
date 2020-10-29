# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/james/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# powerline
source /usr/share/powerline/bindings/zsh/powerline.zsh

# Custom cd
  c() {
    cd $1;
    ls --color=auto;
  }
alias cd="c"

alias ls='ls --color=auto'
alias epoch="date +%s"
alias weather="curl wttr.in/50.93,-1.00"

# Stop ZSH using wildcards with curl urls
alias curl='noglob curl'

# cat /etc/motd

# start tmux
# https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

export PATH=$PATH:/home/james/Programs/gcc-arm-none-eabi-9-2020-q2-update/bin/
export PATH=$PATH:/home/james/opt/xPacks/@xpack-dev-tools/openocd/0.10.0-15.1/.content/bin/
