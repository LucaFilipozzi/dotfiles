set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x MANPAGER less
set -x PIP_REQUIRE_VIRTUALENV "true"
set -x FZF_DEFAULT_COMMAND 'rg --files'

set -x fish_user_paths $HOME/bin $fish_user_paths

set -x AWS_VAULT_BACKEND pass
set -x AWS_VAULT_PASS_CMD /usr/local/bin/gopass

source ~/.config/fish/config-local.fish

#fish_vi_key_bindings
