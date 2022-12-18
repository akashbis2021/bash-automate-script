#!/bin/bash
read -p "Enter linking servername:" linking
if [ $linking == "linuxserver" ]
then
    echo "SERVER IS CONNECTING........."
    clear
    echo "WELCOME SIR"
    ssh server@192.168.1.105
fi
