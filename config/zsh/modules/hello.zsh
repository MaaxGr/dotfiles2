#!/bin/zsh

hello() {
  echo "Hello $1!"
}

_hello() {
  compadd kotlin python
}

compdef _hello hello