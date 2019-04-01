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
echo "Installing google-chrome"
brew cask install google-chrome

#spotify
echo "Installing spotify"
brew cask install spotify

#sublime-text
echo "Installing sublime-text"
brew cask install sublime-text

#cyberduck
echo "Installing cyberduck"
brew cask install cyberduck

#git
echo "Installing git"
brew install git

#android studio
echo "Installing android-studio"
brew cask install android-studio
brew cask install intel-haxm

#slack, microsoft-teams and skype-for-business
echo "Installing slack, microsoft-teams and skype-for-business"
brew cask install slack
brew cask install microsoft-teams
brew cask install skype-for-business

#docker
echo "Installing docker"
brew cask install docker

#visual-paradigm-ce
echo "Installing visual-paradigm-ce"
brew install visual-paradigm-ce

#gradle
echo "Installing gradle"
brew install gradle

echo "bootstrapping finished"