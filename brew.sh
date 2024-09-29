#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh
brew install screen

# Install other useful binaries.
brew install node
brew install git

# Cask Installs
brew install --cask raycast
brew install --cask betterdisplay
brew install --cask dbeaver-community
brew install --cask postman
brew install --cask visual-studio-code
brew install --cask warp
brew install --cask raycast

# Sam's Apps
brew install docker
brew install --cask ticktick
brew install --cask lastpass
brew install --cask beeper
brew install --cask deskpad
brew install --cask setapp
brew install --cask displaylink
brew install zsh

# Remove outdated versions from the cellar.
brew cleanup

echo "Don't forget to install new apps via SetApp!"