#!/bin/sh
echo Installing npm and node, follow prompts...
sudo apt-get install npm

echo Downloading official docker install script...
curl -fsSL https://get.docker.com -o get-docker.sh

echo Installing docker...
sh ./get-docker.sh

echo Adding user to new docker group...
sudo groupadd -f docker
sudo usermod -aG docker $USER
newgrp docker 

echo Running npm install
(cd ../frontend; npm install)

echo Done!