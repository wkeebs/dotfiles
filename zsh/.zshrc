# ==================== SHELL ====================
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST # move cache dump
source $ZSH/oh-my-zsh.sh

# ENABLE_CORRECTION="true"
plugins=(git)

# Aliases
## Config
export DOTFILES="$HOME/dotfiles"
export VIMRC="$DOTFILES/vim/.vimrc"
alias zsrc="source $DOTFILES/zsh/.zshrc"
alias zconf="vim $DOTFILES/zsh/.zshrc"
alias vconf="vim $DOTFILES/vim/.vimrc"
alias gconf="vim $DOTFILES/ghostty/.config/ghostty/config"

## Commands 
alias ls='eza --color=always --icons=auto --group-directories-first --git-ignore'
alias cd='z'

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# autosuggestions
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold"

# ==================== GOLANG ====================
export GOPRIVATE="*.byted.org,*.everphoto.cn,git.smartisan.com"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/GoLand.app/Contents/MacOS

# launch repo with goland
goland() {
  local target="$1"

  if [ -z "$target" ]; then
    open -a "Goland" "$HOME/go/src"
  elif [ -d "$target" ] || [ -f "$target" ]; then
    open -a "Goland" "$target"
  elif [ -d "$HOME/go/src/$target" ]; then
    open -a "Goland" "$HOME/go/src/$target"
  else
    echo "Error: '$target' is not a valid path or repo in ~/go/src" >&2
    return 1
  fi
}

# tab autocomplete 
_goland_completions() {
  local -a repos
  local -a display_repos
  
  repos=($HOME/go/src/*(N-/))
  display_repos=("${(@)repos:t}")
  
  _alternative \
    'go-repos::compadd -d display_repos -a repos' \
    # 'files::_files' # uncomment to include all files
}
compdef _goland_completions goland
autoload -Uz compinit && compinit
zstyle ':completion:*:*:goland:*:go-repos' list-colors '=*=36'
zstyle ':completion:*:*:goland:*:descriptions' format ''

eval "$(zoxide init zsh)"
source <(fzf --zsh)
