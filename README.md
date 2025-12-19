# Dependencies

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install --cask ghostty
brew install --cask nikitabobko/tap/aerospace
brew install nvim
```

# Symlinks
```sh
ln -s ~/.config/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.config/dotfiles/zsh/.zshenv ~/.zshenv
ln -s ~/.config/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/.config/dotfiles/ghostty/config ~/.config/ghostty/config
ln -s ~/.config/dotfiles/aerospace/.aerospace.toml ~/.aerospace.toml
```
