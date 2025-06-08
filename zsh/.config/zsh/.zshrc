# default
setopt autocd extendedglob nomatch notify
unsetopt beep

# enable vi mode
bindkey -v

# C-N and C-P up-down
bindkey '^P' up-line-or-history
bindkey '^N' down-line-or-history

# auto-complete
source $ZDOTDIR/completion.zsh
# todo fix zsh config
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# prompt
source $ZDOTDIR/prompt.zsh
# aliases
source $ZDOTDIR/aliases.zsh

# zoxide
eval "$(zoxide init --cmd cd zsh)"
# fzf
source <(fzf --zsh)

# startx when logging in first tty
if [[ -z $DISPLAY  ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx &>/dev/null
fi
