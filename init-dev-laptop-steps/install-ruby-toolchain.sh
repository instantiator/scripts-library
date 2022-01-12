#!/bin/bash

# ruby toolchain
echo "Installing Ruby toolchain..."
brew install rbenv
brew install ruby-build
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
brew install --cask rubymine
