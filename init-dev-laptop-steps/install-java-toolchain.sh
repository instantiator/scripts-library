#!/bin/bash

# java toolchain
echo "Installing LTS java toolchains..."
brew tap adoptopenjdk/openjdk
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
brew install --cask adoptopenjdk11
brew install --cask adoptopenjdk17
echo 'export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)' >> ~/.zprofile
echo 'export JAVA_11_HOME=$(/usr/libexec/java_home -v11)' >> ~/.zprofile
echo 'export jAVA_17_HOME=$(/usr/libexec/java_home -v17)' >> ~/.zprofile
echo 'alias java8="export JAVA_HOME=$JAVA_8_HOME"' >> ~/.zprofile
echo 'alias java11="export JAVA_HOME=$JAVA_11_HOME"' >> ~/.zprofile
echo 'alias java17="export JAVA_HOME=$JAVA_17_HOME"' >> ~/.zprofile
source ~/.zprofile
java11 # default to Java 11
brew install --cask intellij-idea # or: intellij-idea-ce