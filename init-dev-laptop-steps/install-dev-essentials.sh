#!/bin/bash

# docker
echo "Installing Docker..."
brew install --cask docker

# xcode command-line tools
echo "Installing xcode command-line tools..."
xcode-select --install || true # may already be installed

# install some IDE and dev tools
echo "Installing basics..."
brew install bat
brew install wget
brew install --cask iterm2
brew install --cask visual-studio-code
