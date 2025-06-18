#!/bin/zsh

#alias "ls"="ls --group-directories-first --color=auto"
alias "ll"="colorls -l --group-directories-first --gs --dark"
alias "la"="ls --group-directories-first -hal"
alias ":q"="exit"
alias "rm -rf /"="echo \"read mail really fast\""
alias "pls"="sudo \$(history | tail -n1 | cut --complement -d' ' -f1)"
alias "copy"="xsel -ib"
alias pubkey="tail ~/.ssh/id_rsa.pub"


# Check if yay installed
if type yay > /dev/null; then
    alias upt="yay -Syu"
fi

# Check if upt installed
if type apt > /dev/null; then
    alias upt="apt-get update && apt-get --with-new-pkgs upgrade"
    alias uptr="apt-get autoremove"

fi

# Check if macos
if [[ `uname` == "Darwin" ]]; then
    alias upt="brew update && brew upgrade && count-brew-updates"
fi