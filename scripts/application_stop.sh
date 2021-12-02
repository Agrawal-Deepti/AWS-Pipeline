#!/bin/bash
#Stopping existing node servers
#echo "Stopping any existing node servers"
if sudo pgrep node; then sudo pkill node; fi
#exit 0
