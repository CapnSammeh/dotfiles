#!/usr/bin/env bash

# Ensure ZSH is installed
brew install zsh 
brew install zsh-completions

# Set ZSH as the default Shell
sh -c "echo $(which zsh) >> /etc/shells"
chsh -s /usr/local/bin/zsh

# Install OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Starship
brew install starship