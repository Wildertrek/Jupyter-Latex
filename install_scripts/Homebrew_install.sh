#!/bin/bash

# this script is for mac and runs in a terminal and can run on latest M1 chip macs :) 
# chmod 755 Homebrew_install.sh then ./Homebrew_install.sh

#install homebrew
echo "installing homebrew please enter your password when asked"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install Python3
echo "installing python3"
brew install python3

#install r
echo "installing R App"
brew install --cask r

#install rstudio
echo "installing RStudio"
brew install --cask rstudio

#install jupyter
echo "installing Jupyter"
brew install jupyter

#install jupyter-lab
echo "installing Jupyter-lab"
brew install jupyterlab

#install mysqlworkbench
echo "install mysqlworkbench"
brew install --cask mysqlworkbench

#install mysql
echo "installing mysql"
brew install mysql

#start mysql automatically
echo "Starting mysql"
brew services start mysql

#install mongosh
echo "installing mongosh"
brew install mongosh

# todo: install mongo
# brew tap mongodb/brew
# brew install mongodb-community@4.2
# brew services start mongodb-community@4.2

#install vscode
echo "installing vscode"
brew install --cask visual-studio-code

#install github desktop
echo "install github desktop"
brew install --cask github

#install slack
echo "install slackness"
brew install --cask slack

#install zoom
echo "install zoom enter password when asked"
brew install --cask zoom

#install tableau
echo "installing tableau enter password when asked"
brew install --cask tableau-public

#optional anaconda3 install
# brew install --cask anaconda


