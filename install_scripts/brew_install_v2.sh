#!/bin/bash

#this is script is for mac and can run on latest M1 chip macs :) 

#install homebrew
echo "installing homebrew please enter your password when asked"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install Python3
echo "installing python3"
brew install python3

#install r
echo "installing R"
brew install r

#install rstudio
echo "installing RStudio"
brew install rstudio

#install jupyter
echo "installing Jupyter"
brew install jupyter

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


