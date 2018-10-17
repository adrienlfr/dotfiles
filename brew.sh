#!/usr/bin/env bash

# Install command-line tools using Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install software.
brew tap caskroom/cask

brew cask install google-chrome
brew cask install visual-studio-code
brew cask install visual-studio
# brew cask install menumeters
brew cask install appcleaner
brew cask install spectacle

# Remove outdated versions from the cellar.
brew cleanup
