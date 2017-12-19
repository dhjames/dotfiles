alias cl='clear'

alias py='python'
alias vim='nvim'
alias jv='java -version'

alias zrc='vim $ZDOTDIR/.zshrc'
alias zal='vim $ZDOTDIR/alias.zsh'

mkcd() {
  mkdir -p "$@" && cd "$@";
}

cpwd() {
  echo -n $(pwd) | pbcopy
  echo "copied to clipboard: $(pbpaste)"
}
