#!/bin/zsh

zstyle ':compinit:*' insecure true
autoload -Uz compinit promptinit
compinit
promptinit
export ZSH="$HOME/.oh-my-zsh"