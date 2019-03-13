#!/usr/bin/env bash

# Bootstrap script for setting up a new OSX machine

echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
echo "Updating homebrew"
brew update

# iterm2
echo "Installing iterm2"
brew cask install iterm2

#zsh
echo "Installing zsh"
brew install zsh

echo "bootstrapping finished"