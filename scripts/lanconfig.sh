#!/bin/bash

echo " "
echo "Lan-Module-Option:"
echo "1. Lan-Info"
echo "2. Set-LanName:"
echo "3. Lan-Connection(On/Off)"
echo "4. Setup-Lan:"
echo "5. Quit"
echo " "
read -p "Enter Option:" choice

while : 
do
   case $choice in

    1)clear
      echo "Lan-Info:"
      echo " "
      ifconfig
      echo " ";;

    2)clear
      read -p "Set-LanName:" lanname
      echo "LanName is Set...."
      echo " ";;

    3)clear
      read -p "Lan-Connection(On/Off):" switch
      if [ $switch == "on" ]
      then
        sudo nmcli connection up $lanname
        clear
        echo "Lan is Connected....."
      elif [ $switch == "off" ]
      then
        sudo nmcli connection down $lanname
        clear
        echo "Lan is Disconnected...."
      fi
      echo " ";;

    4)clear
      nmtui
      echo " ";;

    5)clear
      echo "Quit-module"
      echo " "
      exit;;

    *)clear
      echo "Invalid Option"
      echo " ";;
esac

echo " "
echo "Lan-Module-Option:"
echo "1. Lan-Info"
echo "2. Set-LanName:"
echo "3. Lan-Connection(On/Off)"
echo "4. Setup-Lan:"
echo "5. Quit"
echo " "
read -p "Enter Option:" choice

done


