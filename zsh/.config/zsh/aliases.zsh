alias sorc='source $ZDOTDIR/.zshrc'
alias soenv='source $ZDOTDIR/.zshenv'

alias xbps-install='sudo xbps-install -S'
alias xbps-remove='sudo xbps-remove'
alias uxbps='yes | sudo xbps-install -u xbps && yes | sudo xbps-install -Su'

alias c='clear'

alias ls='ls --color=auto --human-readable'
alias ll='ls -la --color=auto --human-readable'
alias l='ls -l --color=auto --human-readable'
alias grep='grep --color=auto'
alias diff='diff --color'
alias cp='cp -iv'

alias ..='echo cd .. && cd ..'
alias -- -='cd -'

alias pgrep='pgrep -l'
alias g='git'
alias nv='nvim'
alias ff='fastfetch -l sparky --logo-color-1 white --color magenta'

alias weather='curl -s wttr.in | head -n -2'
alias audio='pkill pipewire; ( pipewire &> /dev/null & pipewire-pulse &> /dev/null & )'

alias pagent-start='( $HOME/downloads/postman_agent/postman_agent &> /dev/null & )'
alias pagent-stop='pkill -e "postman-agent|postman_agent"'
