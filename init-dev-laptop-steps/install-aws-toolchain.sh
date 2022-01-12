#!/bin/bash

# install AWS CLI
echo "Installing AWS CLI and supporting tools..."
brew tap aws/tap
brew install awscli aws-sam-cli
brew install --cask aws-vault

# install GDS CLI (NB. requires an SSH key configured)
echo "Installing GDS CLI..."
brew tap alphagov/gds && brew install gds-cli && gds --version
