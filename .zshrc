# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000000
unsetopt autocd beep extendedglob nomatch notify
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/clark/.zshrc'

autoload -Uz compinit promptinit vcs_info
compinit
promptinit
# End of lines added by compinstall

# User Additions
#
[[ -f "$HOME/.zshenv" ]] && source "$HOME/.zshenv"

HISTFILESIZE=1000000000
HISTCONTROL=ingoredups:erasedups
#setopt -s histappend ???

alias redo="sudo \"$SHELL\" -c \"$(history -p !!)\""
alias ls="exa -l --icons --git"
alias la="exa -laa --icons --git"
alias :q="exit"
alias getip="curl ifconfig.me && echo"
alias ssh-server="ssh -p 22222 clark@146.70.57.12"
alias ssh-pluto="ssh ch3136@pluto.cse.msstate.edu"
alias rcon-vanilla="mcrcon -H 146.70.57.12 -p minecontrol"
alias cat="bat"
alias pacall="pacall.sh"

export SHELL=$(which zsh)
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)

export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin
export PATH=$PATH:~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin

export PATH=$PATH:~/.local/bin:~/.bin
export PATH=$PATH:~/.local/bin/lua-language-server/bin
export XDG_SCREENSHOTS_DIR=$HOME/Screenshots

precmd() { vcs_info }
zstyle ':vcs_info:*' formats ' %s(%F{magenta}%b%f)' # git(branch)
setopt prompt_subst


PS1='%F{green}<%F{white}%n@%m%f %F{red}%/%f${vcs_info_msg_0_}%F{green}> %F{green}%%%F{lime} ' # name@machine /dir git(branch) %
RPS1='%F{magenta} %D{%T, %A, %B %e, %Y}' # HH:MM:SS, Day, Month DATE, YEAR


alias luamake=/home/clark/.config/nvim/sources/plugin-settings/lua-language-server/3rd/luamake/luamake
