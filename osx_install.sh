#!/usr/bin/env bash

# Bootstrap script for setting up a new OSX machine

echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install xcode tools
xcode-select —-install

# Update homebrew recipes
echo "Updating homebrew"
brew update

# iterm2
echo "Installing iterm2"
brew cask install iterm2

#zsh
echo "Installing zsh"
brew install zsh

sudo chsh -s /usr/local/bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#chrome
brew cask install google-chrome

echo "bootstrapping finished"