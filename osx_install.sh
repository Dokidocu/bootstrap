#!/usr/bin/env bash

# Bootstrap script for setting up a new OSX machine

echo "########## Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "##### Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install xcode tools
xcode-select —-install

# Update homebrew recipes
echo "##### Updating homebrew"
brew update

# iterm2
echo "##### Installing iterm2"
brew install --cask iterm2

#zsh
echo "##### Installing zsh"
brew install zsh

sudo chsh -s /usr/local/bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#chrome
echo "##### Installing google-chrome"
brew install --cask google-chrome

#spotify
echo "##### Installing spotify"
brew install --cask spotify

#sublime-text
echo "##### Installing sublime-text"
brew install --cask sublime-text

#cyberduck
echo "##### Installing cyberduck"
brew install --cask cyberduck

#Charles proxy
echo "##### Installing Charles proxy"
brew install --cask charles

#git
echo "##### Installing git"
brew install git

#android studio
echo "##### Installing android-studio"
brew install --cask android-studio
brew install --cask intel-haxm

#slack, microsoft-teams and skype-for-business
echo "##### Installing slack, microsoft-teams and skype-for-business"
brew install --cask slack
brew install --cask microsoft-teams
brew install --cask skype-for-business

#docker
echo "##### Installing docker"
brew install --cask docker

#visual-paradigm-ce
echo "##### Installing visual-paradigm-ce"
brew install visual-paradigm-ce

#gradle
echo "##### Installing gradle"
brew install --cask adoptopenjdk
brew install gradle

#cocoapods
echo "##### Installing cocoapods"
sudo gem install cocoapods

#sourcetree
echo "##### Installing sourcetree"
brew install --cask sourcetree

#StarUML
echo "##### Installing staruml"
brew install --cask staruml

#Omnigraffle
echo "##### Installing omnigraffle"
brew install --cask omnigraffle

echo "##########  bootstrapping finished"
