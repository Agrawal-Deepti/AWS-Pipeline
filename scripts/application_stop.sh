#!/bin/bash
#Stopping existing node servers
#echo "Stopping any existing node servers"
if sudo pgrep node; then sudo pkill node; > app.stop.out.log 2> app.stop.out.log < /dev/null & fi
#exit 0
