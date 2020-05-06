#!/bin/bash
# This script installs packages.
# Based off Larry Law: https://github.com/larrylawl/set-up-mac

echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing gnu"
brew install grep
brew install gnu-sed

echo "Installing gcc"
brew install gcc
brew cleanup # this removes previous application revisions, saving space"

echo "Installing python3"
brew install python

echo "Set fish as default shell"
brew install fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s `which fish`
curl -L https://get.oh-my.fish | fish

