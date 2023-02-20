#!/bin/bash

echo " "
echo "Wifi-Module-Option:"
echo "1. Wifi-Info"
echo "2. Set-Wifi-Module"
echo "3. Wifi-Scan-Networks"
echo "4. Wifi-Connect(ESSID)"
echo "5. Wifi-turn(On/Off)" 
echo "6. Forget-Netwrk"
echo "7. Quit"
echo " "
read -p "Enter Option:" choice


while  :
do

 case $choice in

  1)clear
    echo "Wifi-Info:"
    echo " "
    iwconfig
    echo " ";;
  
  2)clear
    read -p "Set-Wifi-Module:" wifimodel
    echo "Wifi-Module is Set... "
    echo " ";;

  3)clear
    echo "Wifi-Scanned-Networks:"
    iwlist $wifimodule scan | grep ESSID
    echo " ";;

  4)clear
    echo "Wifi-Connect..."
    read -p "Enter ESSID: " essid 
    nmcli d wifi connect $essid
    clear
    echo "$essid is succesfully connect.."
    echo " ";;

  5)clear
    read -p "Wifi-Module(On/Off):" switch
    if [ $switch == "on" ]
    then
       nmcli d  connect $wifimodel
       clear
       echo "Wifi is Connected.. .."
    elif [ $switch == "off" ]
    then
       nmcli d disconnect $wifimodel
       clear
       echo "Wifi is Disconnect.. .."
    fi
    echo " ";;
  6)clear
    echo "Enter ESSID:" forgetessid
    sudo nmcli c delete $forgetessid
    clear
    echo "ESSID forget successfully.."
    echo " ";;
  
  7)clear
    echo "Quit-module"
    echo " "
    exit;;

  *)clear
    echo "Invalid Option.."
    echo " ";;
esac

echo " "
echo "Wifi-Module-Option:"
echo "1. Wifi-Info"
echo "2. Set-Wifi-Module"
echo "3. Wifi-Scan-Networks"
echo "4. Wifi-Connect(ESSID)"
echo "5. Wifi-turn(On/Off)" 
echo "6. Forget-Network"
echo "7. Quit"
echo " "
read -p "Enter Option:" choice


done
