# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
#bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/clark/.zshrc'

autoload -Uz compinit promptinit #vcs_info
compinit
promptinit
#vcs_info
# End of lines added by compinstall

zstyle ':completion:*' menu select rehash true

[[ -f "$HOME/.zshenv" ]] && source "$HOME/.zshenv"

alias ls="ls.sh"
alias la="la.sh"
alias cat="cat.sh"
alias less="less.sh"
alias grep="grep.sh"

alias getip="getip.sh"
alias pacall="pacall.sh"
alias update="update.sh"
alias md="md.sh"

#precmd() { vcs_info }
#zstyle ':vcs_info:' formats ' %s(%F{magenta}%b%f)' # git(branch)
#setopt prompt_subst

#PS1='%F{green}<%F{white}%n@%m%f %F{red}%/%f${vcs_info_msg_0_}%F{green}> \
#%F{green}%%%F{lime} ' # name@hostname /dir git(branch) %
#PROMPT='%F{green}<%F{white}%n@%m%f %F{red}%/%f${vcs_info_msg_0_}%F{green}> \
#%F{green}%%%F{lime} ' # name@hostname /dir git(branch) %
#RPS1='%F{magenta} %D{%T, %A, %B %e, %Y}' # HH:MM:SS, Day, Month DATE, YEAR

export ZSH_THEME="clark"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
