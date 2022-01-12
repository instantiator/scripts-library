#!/bin/bash

set -e
set -o pipefail

echo "This will initialise a dev laptop for the first time."
echo "If you have run it before, you may end up with duplicate config."
echo "Are you sure you want to proceed? (y/n)"
read -n 1 -r PROCEED
echo
if [[ $PROCEED =~ ^[Yy]$ ]]
then
    echo "Preparing laptop."
else
    exit 0
fi

# check the ssh directory for a key
echo "Create an SSH key..."
echo "Contents of your ~/.ssh directory:"
mkdir -p ~/.ssh
ls -al ~/.ssh
echo "If there's no <key> and <key>.pub, you'll need a new SSH key."
echo "Create a new SSH key? (y/n)"
read -n 1 -r CREATE
echo
if [[ $CREATE =~ ^[Yy]$ ]]
then
    # configure SSH agent and SSH key, and pass to github
    source ./init-dev-laptop-steps/create-ssh-key.sh
fi

# create src directory
echo "Creating your ~/src directory..."
source ./init-dev-laptop-steps/create-src-directory.sh

# install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install dev tools
echo "Installing basic dev tools..."
source ./init-dev-laptop-steps/install-dev-essentials.sh
source ./init-dev-laptop-steps/install-aws-toolchain.sh

# install a few productivity tools
echo "Installing productivity tools..."
source ./init-dev-laptop-steps/install-productivity-tools.sh

# install OhMyZsh
echo "Installing OhMyZsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
