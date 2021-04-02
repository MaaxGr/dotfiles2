
source ./functions.zsh

# Init .zshrc
symbolic_link "$PWD/home/.zshrc" "$HOME/.zshrc"

# Init config-zsh
symbolic_link $PWD/config/zsh $HOME/.config/zsh
chmod u+x $HOME/.config/zsh/init.zsh

# Init config-ssh (config-file)
symbolic_link $PWD/config/ssh/config $HOME/.ssh/config


