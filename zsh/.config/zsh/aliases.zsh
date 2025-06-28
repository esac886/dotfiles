alias xbps-install='sudo xbps-install -S'
alias xbps-remove='sudo xbps-remove'
alias uxbps='sudo xbps-install -u xbps && sudo xbps-install -Su'

alias c='clear'
alias ls='ls --color=auto --human-readable'
alias ll='ls -la --color=auto --human-readable'
alias l='ls -l --color=auto --human-readable'

alias g='git'

alias sorc='source $ZDOTDIR/.zshrc'
alias soenv='source $ZDOTDIR/.zshenv'

alias nv='nvim'

alias ff='fastfetch -l sparky --logo-color-1 white --color magenta'

alias weather='curl -s wttr.in | head -n -2'
alias audio='pkill pipewire; ( pipewire &> /dev/null & pipewire-pulse &> /dev/null & )'

alias pagent-start='( $HOME/downloads/postman_agent/postman_agent &> /dev/null & )'
alias pagent-stop='pkill -e "postman-agent|postman_agent"'
