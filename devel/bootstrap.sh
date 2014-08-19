#!/usr/bin/env bash

# Bootstrap file for development vagrant VM

# Bring the system up-to-date
sudo apt-get update
sudo apt-get upgrade -y

# Install git
sudo apt-get install -y git

# Install perlbrew
curl -L http://install.perlbrew.pl |$SHELL
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.profile

# Use the virtualenv burrito script to install python virtualenv + virtualenvwrapper
curl -sL https://raw.githubusercontent.com/brainsik/virtualenv-burrito/master/virtualenv-burrito.sh |$SHELL

# Install R and point the user libraries to a stable path
sudo apt-get install -y r-base r-cran-rjson
echo "R_LIBS_USER=/srv/opt/R/library" > ~/.Renviron


