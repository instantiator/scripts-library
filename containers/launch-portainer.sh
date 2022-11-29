#!/bin/bash

mkdir -p $HOME/portainer-opt

docker create --rm -p 9000:9000 --name portainer -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/portainer-opt:/data portainer/portainer

docker run -d portainer
