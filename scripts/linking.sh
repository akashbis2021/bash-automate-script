#!/bin/bash
read -p "Enter linking servername:" linking
if [ $linking == "linuxserver" ]
then
    echo "SERVER IS CONNECTING........."
    clear
    echo "WELCOME SIR"
    ssh server@198.***.*.***
fi
