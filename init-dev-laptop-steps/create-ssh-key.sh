#!/bin/bash

# create an SSH key
export KEY_FILE=~/.ssh/id_lewis
export KEY_FILE_PUB=~/.ssh/id_lewis.pub
echo "Generating the key with ssh-keygen..."
ssh-keygen -t ed25519 -C "lewis.westbury@digital.cabinet-office.gov.uk" -f $KEY_FILE
ls -al ~/.ssh

# start SSH agent
echo "Configuring SSH agent..."
eval "$(ssh-agent -s)"
touch ~/.ssh/config
echo "Host *" >> ~/.ssh/config
echo "AddKeysToAgent yes" >> ~/.ssh/config
echo "UseKeychain yes" >> ~/.ssh/config
echo "IdentityFile $KEY_FILE" >> ~/.ssh/config

# add new key to SSH agent
echo "Adding your new key to SSH agent..."
ssh-add -K $KEY_FILE

# last step is manual - you must add the public key to your github profile
echo "Please add the new key to your github profile..."
pbcopy < $KEY_FILE_PUB
echo "0. New key copied to clipboard."
echo "1. Add the new key to your profile."
echo "2. Close the browser when complete."
open -W https://github.com/settings/keys

