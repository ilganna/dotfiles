# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/michel/.zshrc'

export LANGUAGE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export LC_CTYPE=en_GB.UTF-8
export LC_COLLATE=en_GB.UTF-8
export LC_TIME=en_GB.UTF-8
export LC_MESSAGES=en_GB.UTF-8
export LC_MONETARY=en_GB.UTF-8
export LC_ADDRESS=en_GB.UTF-8
export LC_IDENTIFICATION=en_GB.UTF-8
export LC_MEASUREMENT=en_GB.UTF-8
export LC_PAPER=en_GB.UTF-8
export LC_TELEPHONE=en_GB.UTF-8
export LC_NAME=en_GB.UTF-8
export LANG=en_GB.UTF-8

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
eval "$(starship init zsh)"
