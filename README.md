## Install script for those completely new to nvim, still on ubuntu & bash etc, since I've been asked a few times

```bash
# /usr/bin/env bash

sudo echo "Starting (and asking for sudo perms)"

# Ensure latest packages

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install snapd

# Install the latest neovim distro

sudo snap install nvim --classic

# Install dependencies for my neovim config

# NODE

sudo snap install node --classic

# RIPGREP

curl -LO <https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb>
sudo dpkg -i ripgrep_13.0.0_amd64.deb

# LAZYGIT

LAZYGIT*VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]\*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit*${LAZYGIT_VERSION}\_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# DISK USAGE

curl -L <https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz> | tar xz
chmod +x gdu_linux_amd64
mv gdu_linux_amd64 /usr/bin/gdu

# BOTTOM

curl -LO <https://github.com/ClementTsang/bottom/releases/download/0.9.6/bottom_0.9.6_amd64.deb>
sudo dpkg -i bottom_0.9.6_amd64.deb

# Create config folder if it deosn't exist

if [ ! -d ~/.config ]; then
mkdir ~/.config
fi

# Clone my config

cd ~/.config
rm -rf ./nvim
git clone <https://github.com/PillowGit/nvim.git>
cd nvim
rm -rf ./.git
rm README.md
cd ~

nvim
```
