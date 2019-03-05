#!/bin/bash

sudo apt-get update

# Installing build essentials
sudo apt-get install -y build-essential libssl-dev


# Nodejs and NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
source ~/.profile
sudo nvm install 7.10.0
sudo nvm use 7.10.0
node -v


#nodemon
sudo npm install -g nodemon
sudo npm install -g loopback-cli

# Mongodb, Installing and starting server
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
sudo service mongod status

# Forever to run nodejs scripts forever
sudo npm install forever -g

# Git - a version control system
sudo apt-get update
sudo apt-get install -y git xclip

# Grunt - an automated task runner
sudo npm install -g grunt-cli

# Bower - a dependency manager
sudo npm install -g bower

# Yeoman - for generators
sudo npm install -g yo 

# Gulp - an automated task runner
sudo npm install -g gulp-cli

# Angular FullStack - My favorite MEAN boilerplate (MEAN = MongoDB, Express, Angularjs, Nodejs)
sudo npm install -g generator-angular-fullstack

# Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# Docker-compose
sudo pip install docker-compose
