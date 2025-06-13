# add .local/bin if it lacks from PATH
[[ "$PATH" == */.local/bin* ]] || PATH="$PATH:$HOME/.local/bin"

# xdg
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# zsh
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=10000
export HISTCONTROL=ignoreboth
export SAVEHIST=10000
export KEYTIMEOUT=1 # for quick vi mode switching
# for plugins
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#777777" 
export ZSH_SYSTEM_CLIPBOARD_METHOD=xcc # use xclip for clipboard

# default apps
export TERM=st
export TERMINAL=$TERM
export EDITOR=nvim
export FCEDIT=$EDITOR

# paging
export MANPAGER=less
export PAGER=moar
export MOAR='-no-statusbar -quit-if-one-screen -wrap'

# misc
export GOPATH=$HOME/dev/go
export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORMTHEME=qt6ct

# fzf
export FZF_DEFAULT_OPTS="--reverse --style=minimal -m --no-scrollbar"
export FZF_CTRL_T_COMMAND="fd . $HOME --type f -H -E '.steam*'"
