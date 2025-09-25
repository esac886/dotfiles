alias sorc='source $ZDOTDIR/.zshrc'
alias soenv='source $ZDOTDIR/.zshenv'

alias xbps-install='sudo xbps-install -S'
alias xbps-remove='sudo xbps-remove'
alias uxbps='yes | sudo xbps-install -u xbps && yes | sudo xbps-install -Su'

alias ls='ls -h --color=auto'
alias l='ls -oght --color=auto'
alias ll='ls -oghtA --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color'
alias cp='cp -iv'
alias mv='mv -v'
alias pgrep='pgrep -l'

alias ..='echo cd .. && cd ..'
alias -- -='cd -'

alias nv='nvim'

alias ff='fastfetch -l sparky --logo-color-1 white --color magenta'
alias weather='curl -s wttr.in | head -n -2'
alias audio='pkill pipewire && ( pipewire &> /dev/null & pipewire-pulse &> /dev/null & )'
alias pagent-start='( $HOME/downloads/postman_agent/postman_agent &> /dev/null & ) && echo postman agent started'
alias pagent-kill='pkill -e "postman-agent|postman_agent"'
