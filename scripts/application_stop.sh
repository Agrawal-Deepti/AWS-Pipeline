#!/bin/bash
#Stopping existing node servers
#echo "Stopping any existing node servers"
if pgrep node; then sudo ps aux | grep -ie node | awk '{print $2}' | xargs kill -9; fi
#exit 0
