setopt autocd       # if input is i directory cd in it
setopt extendedglob # extended pattern matches
setopt nomatch      # print error if patterns not matches
setopt notify       # notify about jobs imidiately
unsetopt beep

setopt globdots             # include dotfiles
setopt interactive_comments # allow comments in shell
setopt promptsp             # don't clean lines without newline at the end

setopt append_history inc_append_history share_history # better history

# auto-suggestions
# source $XDG_DATA_HOME/zsh-autosuggestions/zsh-autosuggestions.zsh
# share vi-mode registers and system clipboard
source $XDG_DATA_HOME/zsh-system-clipboard/zsh-system-clipboard.zsh

# disable accidental ctrl s
stty stop undef 

# enable vi mode
bindkey -v
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char

# C-N and C-P up-down
bindkey '^P' up-line-or-history
bindkey '^N' down-line-or-history

# prompt
source $ZDOTDIR/prompt.zsh
# aliases
source $ZDOTDIR/aliases.zsh

# zoxide
eval "$(zoxide init --cmd cd zsh)"
# fzf
source <(fzf --zsh)

# auto-completions
source $ZDOTDIR/completion.zsh

# startx when logging in first tty
if [[ -z $DISPLAY  ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx &>/dev/null
fi
