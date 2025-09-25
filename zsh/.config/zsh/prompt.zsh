setopt PROMPT_SUBST

PROMPT=' %F{magenta}%n@%m%f %F{green}%5~%f %F{red}>>%f '

# Find and set branch name var if in git repository.
function git_branch_name(){
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        :
    else
        echo '- ('$branch')'
    fi
}

RPROMPT='%F{yellow}%$(git_branch_name)'
