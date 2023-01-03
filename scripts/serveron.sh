#!/bin/bash
read -p "Which server you want to 'ON':" serveron

if [ $serveron == "ubuntuserver" ]
then
    echo "ON LINUXSERVER SUCCESSFULL"
    virtualbox <Enter path>/<servername>.vbox
elif [ $serveron == "redhatserver" ]
then
    echo "ON LINUXSERVER SUCCESSFULL"
    virtualbox <Enter path>/<servername>.vbox
fi
