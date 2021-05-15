#!/bin/zsh

function symbolic_link {
  SOURCE=$1
  LINK_NAME=$2
  echo "Check $SOURCE to $LINK_NAME"

  if [ -L $LINK_NAME ]; then
    rm $LINK_NAME
  fi
  ln -s $SOURCE $LINK_NAME
}

function mkdir_ifnotexists() {
  DIRECTORY=$1
  if [ ! -d $DIRECTORY ]; then
    mkdir $DIRECTORY
  fi
}