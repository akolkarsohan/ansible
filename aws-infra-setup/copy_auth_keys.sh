#!/bin/bash

# Purpose: Copy public auth key from control server to ansible nodes
# Usage: ./copy_auth_keys.sh
# Author: Sohan Akolkar
# Modified: June 2018

count=$(cat hosts | grep -A 5 '\[webserver\]' | cut -d\  -f -1 | grep -v '\[webserver\]' | wc -l)
webserver_ips=$(cat hosts | grep -A 5 '\[webserver\]' | cut -d\  -f -1 | grep -v '\[webserver\]')

for i in ${webserver_ips[@]} ;
do 
	  ssh-copy-id sohan@$i;
done;

