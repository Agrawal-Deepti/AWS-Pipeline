#!/bin/bash

#download node and npm
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash 
sudo . ~/.nvm/nvm.sh
sudo nvm install 16.8.0
sudo nvm use 16.8.0
#nvm install node

#create our working directory if it doesnt exist
DIR="/home/ec2-user/aws-2048-pipeline"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

#remove existing deployment 
if [ -d /home/ec2-user/aws-2048-pipeline/node_modules ]; then
  rm -r /home/ec2-user/aws-2048-pipeline/node_modules > app.before.out.log 2> app.before.out.log < /dev/null & 
fi    

if [ -f /home/ec2-user/aws-2048-pipeline/package-lock.json ]; then
  rm -r /home/ec2-user/aws-2048-pipeline/package-lock.json > app.before.out.log 2> app.before.out.log < /dev/null & 
fi
