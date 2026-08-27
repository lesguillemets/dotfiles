HISTSIZE=10000
HISTFILESIZE=80000

alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root=all'

# cmd > out.txt ができず， `>|` で上書き
set -o noclobber

# Treat unmatched globs as errors
shopt -s failglob

shopt -s checkjobs

# Preserve history from concurrent terminals
shopt -s histappend

export EDITOR=nvim
