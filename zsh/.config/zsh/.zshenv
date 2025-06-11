# zsh
export HISTFILE="$ZDOTDIR/.histfile"
export HISTSIZE=10000
export HISTCONTROL=ignoreboth
export SAVEHIST=10000
export KEYTIMEOUT=1 # for quick vi mode switching
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#777777" 

# xdg
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# default apps
export TERM=st
export TERMINAL=$TERM
export EDITOR=nvim

# paging
export MANPAGER=less
export PAGER=moar
export MOAR='-no-statusbar -quit-if-one-screen -wrap'

# misc
export GOPATH=$HOME/dev/go
export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORMTHEME=qt6ct
