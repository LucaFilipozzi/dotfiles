set -u fish_color_command yellow

set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x MANPAGER less
set -x PIP_REQUIRE_VIRTUALENV "true"
set -x FZF_DEFAULT_COMMAND 'rg --files'

set -x fish_user_paths $HOME/bin $fish_user_paths

set -x AWS_VAULT_BACKEND pass
set -x AWS_VAULT_PASS_CMD /usr/local/bin/gopass

alias ls 'exa --group --modified --time-style long-iso $argv'
alias ll 'exa --group --modified --time-style long-iso --bytes --long $argv'
alias la 'exa --group --modified --time-style long-iso --bytes --long --all $argv'
alias ld 'exa --group --modified --time-style long-iso --bytes --long --all --list-dirs $argv'
alias lg 'exa --group --modified --time-style long-iso --bytes --long --all --git --git-ignore $argv'
alias lm 'exa --group --modified --time-style long-iso --bytes --long --all --git --git-ignore --sort modified $argv'
alias lt 'exa --group --modified --time-style long-iso --bytes --long --all --tree --level $argv'

