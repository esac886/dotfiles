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

# disable accidental ctrl s
stty stop undef 

# enable emacs mode
bindkey -e
# ctrl-u to delete whole line before cursor (like in bash)
bindkey \^u backward-kill-line

# C-N and C-P up-down
bindkey '^P' up-line-or-history
bindkey '^N' down-line-or-history

# prompt
source $ZDOTDIR/prompt.zsh
# aliases
source $ZDOTDIR/aliases.zsh
# auto-completions
source $ZDOTDIR/completion.zsh

# fzf
source <(fzf --zsh)

# startx when logging in first tty
if [[ -z $DISPLAY  ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx &>/dev/null
fi
