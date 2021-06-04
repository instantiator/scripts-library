#!/bin/bash

# install AWS CLI
echo "Installing AWS CLI..."
brew install awscli
brew install --cask aws-vault

# install GDS CLI (NB. requires an SSH key configured)
echo "Installing GDS CLI..."
brew tap alphagov/gds && brew install gds-cli && gds --version

# docker
echo "Installing Docker..."
brew install --cask docker

# xcode command-line tools
echo "Installing xcode command-line tools..."
xcode-select --install || true # may already be installed

# install some IDE and dev tools
echo "Installing IDE and dev tools..."
brew install --cask iterm2
brew install wget
brew install --cask visual-studio-code
brew install --cask intellij-idea # or: intellij-idea-ce
brew install --cask rubymine
brew install --cask pycharm
bfew install --cask webstorm
brew tap homebrew/cask-versions
brew install --cask visual-studio

# ruby toolchain
echo "Installing Ruby toolchain..."
brew install rbenv
brew install ruby-build
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
rbenv install 2.6.0
rbenv install 2.7.2

# java toolchain
echo "Installing Java toolchain..."
brew tap adoptopenjdk/openjdk
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
brew install --cask adoptopenjdk11
brew install --cask adoptopenjdk13
echo 'export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)' >> ~/.zshrc
echo 'export JAVA_11_HOME=$(/usr/libexec/java_home -v11)' >> ~/.zshrc
echo 'export jAVA_13_HOME=$(/usr/libexec/java_home -v13)' >> ~/.zshrc
echo 'alias java8="export JAVA_HOME=$JAVA_8_HOME"' >> ~/.zshrc
echo 'alias java11="export JAVA_HOME=$JAVA_11_HOME"' >> ~/.zshrc
echo 'alias java13="export JAVA_HOME=$JAVA_13_HOME"' >> ~/.zshrc
source ~/.zshrc

# default to Java 11
java11

# xml signing tools
echo "Installing XML tools..."
brew install xmlsectool
brew install opensc # but do we need version 0.17.0?

# nodejs
echo "Installing NodeJS..."
brew install nodejs
