#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 16.8.0
nvm use 16.8.0
#nvm install node

#create our working directory if it doesnt exist
DIR="/home/ec2-user/aws-2048-pipeline"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
  rm -r /home/ec2-user/aws-2048-pipeline
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

#remove existing deployment 
if [ -d /home/ec2-user/aws-2048-pipeline/node_modules ]; then
  rm -r /home/ec2-user/aws-2048-pipeline/node_modules
fi    

if [ -f /home/ec2-user/aws-2048-pipeline/package-lock.json ]; then
  rm -r /home/ec2-user/aws-2048-pipeline/package-lock.json
fi
