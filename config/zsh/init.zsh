#!/bin/zsh

ZSH_MODULE_DIR="$HOME/.config/zsh/modules"
ZSH_CORE_DIR="$HOME/.config/zsh/core"
ZSH_EXTENSION_DIR="$HOME/.config/zsh/extensions"

source $ZSH_CORE_DIR/omzPrepare.zsh
source $ZSH_CORE_DIR/omzPlugins.zsh
source $ZSH_CORE_DIR/omzFinalize.zsh

for f in $ZSH_MODULE_DIR/*.zsh; do source $f; done

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export FZF_BASE=/usr/bin/fzf

export QT_QPA_PLATFORMTHEME=qt5ct

PATH=$PATH:$USER_PATH/.cargo/bin
PATH=$PATH:$USER_PATH/.gem/ruby/2.5.0/gems/colorls-1.1.1/exe

if [ -d /usr/share/fzf ]; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi

export FZF_DEFAULT_OPTS='
    --color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

export ZSH_AUTOSUGGEST_USE_ASYNC=1

export PATH=$PATH:~/.scripts
export PATH=$PATH:~/.config/zsh/scripts/

export EDITOR=/usr/bin/vim

[[ -f ~/.rclocal ]] && source ~/.rclocal
[[ -f ~/.secrets ]] && source ~/.secrets

