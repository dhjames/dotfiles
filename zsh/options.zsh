#tab completion
autoload -U compinit
compinit
setopt correctall

#directory navigation
setopt autocd autopushd

#history
setopt hist_ignore_all_dups
setopt hist_ignore_space
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify

# prompt
export PS1="[%*] (%C) > "

# other
export EDITOR=/usr/local/bin/nvim
bindkey -v
