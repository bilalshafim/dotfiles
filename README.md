# Usage
## Stowing
Clone repo into ~/.dotfiles:
```
git clone git@github.com:bilalshafim/dotfiles ~/.dotfiles
```
```
stow -d ~/.dotfiles -t ~ bash docker tmux zsh
```
Stow .config directory:
```
stow -d ~/.dotfiles -t ~/.config .config
```

## Neovinm config submodule

If you clone dotfiles repository in the future, remember to initialize and update submodules (nvim) with:
```
git submodule update --init --recursive
```

When you make changes to Neovim configuration and want to update the submodule reference in your dotfiles repo, use:
```
cd nvim  # Navigate to the nvim submodule
git add .
git commit -m "Update Neovim configuration"
git push origin main  # Push changes to the Neovim repo
cd ..  # Go back to the dotfiles directory
git add nvim  # Stage the updated submodule reference
git commit -m "Update submodule reference for nvim"
git push origin main  # Push changes to the dotfiles repo
```

To pull updates from the Neovim repository into dotfiles repo, run:
```
git submodule update --remote nvim
```




# Dependencies
### GNU Stow
```
sudo apt install stow
```
or build from source:
https://git.savannah.gnu.org/cgit/stow.git




# Packages
### Zsh
```
sudo apt install zsh
```

### Oh-My-Zsh
Follow offical install guide:
https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
https://ohmyz.sh/
or build from source:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Tmux
```
sudo apt install tmux
```

### Neovim
Build from source:
https://github.com/neovim/neovim?tab=readme-ov-file#install-from-source

### i3wm
```
sudo apt install i3 i3lock
sudo add-apt-repository ppa:meskarune/i3lock-color -y
sudo apt update
sudo apt install i3lock-color
```

### Macchina
```
sudo apt install macchina
```
Or see source: https://github.com/yourusername/macchina

### Picom
```
sudo apt install picom
```