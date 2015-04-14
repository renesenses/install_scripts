#!/bin/sh
# Requirements for perl dev and cpan

cd ~/GIT_REPO/install_scripts

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wxWidgets
brew install wget
brew install gnutls
brew install gnupg

brew install homebrew/dupes/diffutils

sudo cpan -i Task::CPAN::Reporter
sudo cpan -i YAML
sudo cpan -i CPAN::SQLite


install_makepatch.sh

sudo cpan -i Alien::wxWidgets
sudo cpan -i Wx
