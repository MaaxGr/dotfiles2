#!/bin/sh

if type yay > /dev/null; then
    eval "$(direnv hook zsh)"
fi

