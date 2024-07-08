# Largely adapted from: https://www.youtube.com/watch?v=ud7YxC33Z3w

# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# Completions
zinit light zsh-users/zsh-completions
autoload -U compinit && compinit

# fzf
zinit light Aloxaf/fzf-tab
source <(fzf --zsh)

# Completion Styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# From: https://superuser.com/a/700448
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -i --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -i --color=always $realpath'

# Syntax Highlighting
zinit light zsh-users/zsh-syntax-highlighting

# Autosuggestions
zinit light zsh-users/zsh-autosuggestions

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# Keybinds, vim
# Possibly still todo
#zinit ice depth=1; zinit light jeffreytse/zsh-vi-mode
#function zvm_config() {
#    
#}
bindkey '^k' history-search-backward
bindkey '^j' history-search-forward

# Prompt
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
zinit light starship/starship
eval "$(starship init zsh)"

# History
HISTSIZE=16384
HISTFILE=~/.zsh_history
SAVE_HIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias ls="eza -l --icons --git"
alias la="eza -laa --icons --git"
alias cat="bat --paging=never --color=always"
alias less="bat --paging=always --color=always"
alias grep="grep --line-number --color=always"
alias vim="nvim"

alias getip="getip.sh"
alias pacall="pacall.sh"
alias update="update.sh"

# Replay cached completions
zinit cdreplay -q

# Environment
[ -f "$HOME/.zshenv" ] && source "$HOME/.zshenv"
[ -f "$HOME/.cargo/bin" ] && source "$HOME/.cargo/bin"
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"
