# Dependencies
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install romkatv/powerlevel10k/powerlevel10k
brew install zoxide
brew install eza
brew install fzf
brew install --cask ghostty
brew install --cask nikitabobko/tap/aerospace
brew install nvim
brew install tmux
brew install lazygit
```

# Symlinks
```sh
export DOTFILES="~/.config/dotfiles"
ln -sf "$DOTFILES/zsh/.zshrc" ~/.zshrc
ln -sf "$DOTFILES/zsh/.zshenv" ~/.zshenv
ln -sf "$DOTFILES/vim/.vimrc" ~/.vimrc
ln -sf "$DOTFILES/ghostty/config" ~/.config/ghostty/config
ln -sf "$DOTFILES/aerospace/.aerospace.toml" ~/.aerospace.toml
ln -sf "$DOTFILES/tmux/.tmux.conf" ~/.tmux.conf
```

# Commands
## Edit Config
- `zconf`: edit zshrc
- `vconf`: edit vimrc
- `gconf`: edit ghostty config
- `tconf`: edit tmux config

## Refresh Config
- `zsrc`: source zshrc
