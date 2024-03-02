# ------------------------------------------------------------------------------
# Fish
set -g -x fish_greeting ''

set --erase --universal fish_user_paths

# ------------------------------------------------------------------------------
# Binaries
set -U fish_user_paths /opt/homebrew/bin $fish_user_paths

# ------------------------------------------------------------------------------
# Aliases
alias ls="eza -h"
alias la="eza -lah --group"

alias vim="nvim"

alias tp="telepresence"
alias tpst="telepresence status"
alias tpua="tepepresence uninstall --all-agents"

alias pn="pnpm"

# ------------------------------------------------------------------------------
# Docker
alias dc="DOCKER_BUILDKIT=1 docker compose"
alias dcl="dc logs -f --tail=20"

# ------------------------------------------------------------------------------
# Rust
fish_add_path $HOME/.cargo/bin

# ------------------------------------------------------------------------------
# Go
set -x GOPATH /Users/artembeliakov
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

# ------------------------------------------------------------------------------
# Python
set -x PATH "$HOME/.pyenv/bin" $PATH
set -x PATH "$HOME/.local/bin" $PATH
set -x PYTHONPATH "$HOME/.pyenv/shims/python"
# set -x PYTHONHOME "/usr/local/lib"
pyenv init - | source
# pyenv shell 3.11.0
# set -x PYENV_VERSION "3.11.0"

# ------------------------------------------------------------------------------
# Node
fish_add_path $HOME/.yarn/bin

# ------------------------------------------------------------------------------
# Prompt/shell initialization.

# `starship`, must be close to the end.
if type -q starship
    starship init fish | source
else
    echo "`starship` was not initialized because it could not be found."
end
