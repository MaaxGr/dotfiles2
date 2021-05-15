source ./functions.zsh

# Init .zshrc
symbolic_link "$PWD/home/.zshrc" "$HOME/.zshrc"

# Init config-zsh
mkdir_ifnotexists $HOME/.config
symbolic_link $PWD/config/zsh $HOME/.config/zsh
chmod u+x $HOME/.config/zsh/init.zsh


# Init config-ssh (config-file)
if [ ! -d $HOME/.ssh ]; then
    ssh-keygen
fi

symbolic_link $PWD/config/ssh/config $HOME/.ssh/config


