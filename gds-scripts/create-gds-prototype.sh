#!/bin/bash

if [ -z "$1" ]
then
    echo "Please provide a project name."
    exit 1
fi

wget -O prototype-kit.zip https://govuk-prototype-kit.herokuapp.com/docs/download
unzip prototype-kit.zip
mv govuk-prototype-kit-* $1
pushd $1
npm install
popd
