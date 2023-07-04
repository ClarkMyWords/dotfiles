#
# ~/.zshenv
#

#if [ -n "$DESKTOP_SESSION" ]; then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
#fi

#. "$HOME/.cargo/env"
#
export SHELL=$(which zsh)
export SUDO_EDITOR=$(which nvim)
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)

export KEYTIMEOUT=5

export PATH=$PATH:~/.local/bin:~/.bin
# Rust, lsp, etc.

