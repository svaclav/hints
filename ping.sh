#!/bin/bash

ping -D -c 1 8.8.8.8 | awk '/icmp_seq/ { print $1 " -- " substr($8, 6, 10)}'

#while [ 1 ]; do echo -n "$(date +%Y-%m-%d-%H:%M:%S)   " >> /tmp/ping.txt; ping -c 1 8.8.8.8 | sed -n '2p' | cut -d "=" -f 4 | cut -d " "  -f 1 >> /tmp/ping.txt; sleep 1; done
