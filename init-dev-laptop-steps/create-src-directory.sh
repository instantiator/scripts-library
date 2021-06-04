#!/bin/bash

# create src directory
mkdir -p ~/src

# grab a copy of verify-local-startup (will ask to trust github SSH)
echo "Cloning verify-local-startup, using your SSH key..."
pushd ~/src
git clone git@github.com:alphagov/verify-local-startup.git
popd
