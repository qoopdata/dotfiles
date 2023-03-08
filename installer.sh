#!/bin/zsh

# updating system
sudo pacman -Syu

# installing dependencies and apps
sudo pacman -S --noconfirm alacritty neovim discord steam nodejs npm chromium git telegram-desktop
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -sL install-node.vercel.app/lts | bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# making directories
mkdir ~/Main
mkdir ~/Main/Projects
mkdir ~/Main/Projects/Rust
mkdir ~/Main/Projects/Python
mkdir ~/.config/alacritty
mkdir ~/.config/nvim

# cloning repo and placing dotfiles
git clone https://github.com/qoopdata/dotfiles ~/Main/Dotfiles
cp ~/Main/Dotfiles/alacritty/alacritty.yml ~/.config/alacritty/
cp ~/Main/Dotfiles/nvim/init.vim ~/.config/nvim/
yes | cp -rf ~/Main/Dotfiles/zsh/.zshrc ~/
