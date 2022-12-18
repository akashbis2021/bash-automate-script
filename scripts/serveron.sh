#!/bin/bash
read -p "Which server you want to 'ON':" serveron

if [ $serveron == "linuxserver" ]
then
    echo "ON LINUXSERVER SUCCESSFULL"
    virtualbox /mnt/hdd/os_dumy/server/server.vbox
fi
