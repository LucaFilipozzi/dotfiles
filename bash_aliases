# vim: set ft=sh ts=4 sw=4 et ai si:

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

export LANG=en_CA.UTF-8
export PAGER=less
export EDITOR=vim
export VISUAL=vim

function prompt_command() {   
    if [[ -n $TMUX ]]; then
        NEW_SSH_AUTH_SOCK=`tmux show-environment | egrep "^SSH_AUTH_SOCK" | cut -d = -f 2`
        if [[ -n $NEW_SSH_AUTH_SOCK ]] && [[ -S $NEW_SSH_AUTH_SOCK ]]; then 
            SSH_AUTH_SOCK=$NEW_SSH_AUTH_SOCK  
        fi
    fi
}

export PROMPT_COMMAND=prompt_command
