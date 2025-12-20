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
```

# Symlinks
```sh
export DOTFILES="~/.config/dotfiles"
ln -s "$DOTFILES/zsh/.zshrc" ~/.zshrc
ln -s "$DOTFILES/zsh/.zshenv" ~/.zshenv
ln -s "$DOTFILES/vim/.vimrc" ~/.vimrc
ln -s "$DOTFILES/ghostty/config" ~/.config/ghostty/config
ln -s "$DOTFILES/aerospace/.aerospace.toml" ~/.aerospace.toml
```

# Commands
- `zconf`: edit zshrc
- `vconf`: edit vimrc
- `gconf`: edit ghostty config
- `zsrc`: source zshrc
