alias cl='clear'
alias py='python3'
alias jv='java -version'
alias vim='nvim'
alias psa='source env/bin/activate'
alias ctags="$(brew --prefix)/bin/ctags"
alias zrc='vim $ZDOTDIR/.zshrc'
alias zal='vim $ZDOTDIR/alias.zsh'

mkcd() {
  mkdir -p "$@" && cd "$@";
}

cpwd() {
  echo -n $(pwd) | pbcopy
  echo "copied to clipboard: $(pbpaste)"
}
