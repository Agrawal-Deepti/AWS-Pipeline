#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/aws-2048-pipeline

#navigate into our working directory where we have all our github files
cd /home/ec2-user/aws-2048-pipeline

#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)
#remove existing deployment 
if [[ -d /home/ec2-user/aws-2048-pipeline/node_modules ]]
then
	rm -r /home/ec2-user/aws-2048-pipeline/node_modules
fi    

if [[ -f /home/ec2-user/aws-2048-pipeline/package-lock.json ]]
then
    rm -r /home/ec2-user/aws-2048-pipeline/package-lock.json
fi
#install node modules
npm install react-scripts --save

#start our node app in the background
npm start > app.out.log 2> app.err.log < /dev/null & 

#end script
